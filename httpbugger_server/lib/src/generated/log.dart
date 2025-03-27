/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class HttpLog
    implements _i1.SerializableModel, _i1.ProtocolSerialization {
  HttpLog._({
    required this.timestamp,
    required this.userId,
    required this.endpointUrl,
    required this.requestMethod,
    required this.statusCode,
    required this.responseBody,
    required this.requestHeaders,
    required this.responseHeaders,
    required this.requestParams,
    required this.responseTimeMs,
  });

  factory HttpLog({
    required DateTime timestamp,
    required String userId,
    required String endpointUrl,
    required String requestMethod,
    required int statusCode,
    required String responseBody,
    required String requestHeaders,
    required String responseHeaders,
    required String requestParams,
    required int responseTimeMs,
  }) = _HttpLogImpl;

  factory HttpLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return HttpLog(
      timestamp:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['timestamp']),
      userId: jsonSerialization['userId'] as String,
      endpointUrl: jsonSerialization['endpointUrl'] as String,
      requestMethod: jsonSerialization['requestMethod'] as String,
      statusCode: jsonSerialization['statusCode'] as int,
      responseBody: jsonSerialization['responseBody'] as String,
      requestHeaders: jsonSerialization['requestHeaders'] as String,
      responseHeaders: jsonSerialization['responseHeaders'] as String,
      requestParams: jsonSerialization['requestParams'] as String,
      responseTimeMs: jsonSerialization['responseTimeMs'] as int,
    );
  }

  DateTime timestamp;

  String userId;

  String endpointUrl;

  String requestMethod;

  int statusCode;

  String responseBody;

  String requestHeaders;

  String responseHeaders;

  String requestParams;

  int responseTimeMs;

  HttpLog copyWith({
    DateTime? timestamp,
    String? userId,
    String? endpointUrl,
    String? requestMethod,
    int? statusCode,
    String? responseBody,
    String? requestHeaders,
    String? responseHeaders,
    String? requestParams,
    int? responseTimeMs,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp.toJson(),
      'userId': userId,
      'endpointUrl': endpointUrl,
      'requestMethod': requestMethod,
      'statusCode': statusCode,
      'responseBody': responseBody,
      'requestHeaders': requestHeaders,
      'responseHeaders': responseHeaders,
      'requestParams': requestParams,
      'responseTimeMs': responseTimeMs,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      'timestamp': timestamp.toJson(),
      'userId': userId,
      'endpointUrl': endpointUrl,
      'requestMethod': requestMethod,
      'statusCode': statusCode,
      'responseBody': responseBody,
      'requestHeaders': requestHeaders,
      'responseHeaders': responseHeaders,
      'requestParams': requestParams,
      'responseTimeMs': responseTimeMs,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _HttpLogImpl extends HttpLog {
  _HttpLogImpl({
    required DateTime timestamp,
    required String userId,
    required String endpointUrl,
    required String requestMethod,
    required int statusCode,
    required String responseBody,
    required String requestHeaders,
    required String responseHeaders,
    required String requestParams,
    required int responseTimeMs,
  }) : super._(
          timestamp: timestamp,
          userId: userId,
          endpointUrl: endpointUrl,
          requestMethod: requestMethod,
          statusCode: statusCode,
          responseBody: responseBody,
          requestHeaders: requestHeaders,
          responseHeaders: responseHeaders,
          requestParams: requestParams,
          responseTimeMs: responseTimeMs,
        );

  @override
  HttpLog copyWith({
    DateTime? timestamp,
    String? userId,
    String? endpointUrl,
    String? requestMethod,
    int? statusCode,
    String? responseBody,
    String? requestHeaders,
    String? responseHeaders,
    String? requestParams,
    int? responseTimeMs,
  }) {
    return HttpLog(
      timestamp: timestamp ?? this.timestamp,
      userId: userId ?? this.userId,
      endpointUrl: endpointUrl ?? this.endpointUrl,
      requestMethod: requestMethod ?? this.requestMethod,
      statusCode: statusCode ?? this.statusCode,
      responseBody: responseBody ?? this.responseBody,
      requestHeaders: requestHeaders ?? this.requestHeaders,
      responseHeaders: responseHeaders ?? this.responseHeaders,
      requestParams: requestParams ?? this.requestParams,
      responseTimeMs: responseTimeMs ?? this.responseTimeMs,
    );
  }
}
