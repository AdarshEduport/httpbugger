import 'package:serverpod/serverpod.dart';
import 'dart:async';
import '../generated/protocol.dart';

class HttpWatcherEndpoint extends Endpoint {
  static const _channelAdded = 'data-added';

  /// Sets a single pixel and notifies all connected clients about the change.
  Future<void> postLog(Session session, {required HttpLog log}) async {
    if(_isUserActive(log.userId)){
         session.messages.postMessage(_channelAdded, log);
    }else{
  session.log(
  'not active User',
  level: LogLevel.warning);

    }
    
  }

  Stream logUpdates(Session session) async* {
  
    // Request a stream of updates from the pixel-added channel in
    // MessageCentral.
    var updatelogStream =
        session.messages.createStream<HttpLog>(_channelAdded);

    await for (var log in updatelogStream) {
      yield log;
    }
  }


  // Store active users with their last activity time
  static final Map<String, DateTime> _activeUsers = {};

  /// Mark user as active and refresh their timestamp
 Future<void> markUserActive(Session session,{required String phoneNumber})async {
    _activeUsers[phoneNumber] = DateTime.now();
     session.log(
  'add to  active User $_activeUsers',
  level: LogLevel.warning);
  }

  /// Check if the user is still active
  bool _isUserActive(String phoneNumber) {

    if ( !_activeUsers.containsKey(phoneNumber)) {
      return false;
    }

    // Expire user session if inactive for more than 30 minutes
    if (DateTime.now().difference(_activeUsers[phoneNumber]!) > Duration(minutes: 30)) {
      _activeUsers.remove(phoneNumber);
      return false;
    }

    return true;
  }

  /// Manually log out a user
 Future<void> markUserInactive(Session session,{required String phoneNumber})async {

    session.log(
  "removed active User ${phoneNumber}",
  level: LogLevel.warning,

   );
    _activeUsers.remove(phoneNumber);
  }
}
