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
import '../endpoints/example_endpoint.dart' as _i2;
import '../endpoints/watch_endpoint.dart' as _i3;
import 'package:httpbugger_server/src/generated/log.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'example': _i2.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'httpWatcher': _i3.HttpWatcherEndpoint()
        ..initialize(
          server,
          'httpWatcher',
          null,
        ),
    };
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i2.ExampleEndpoint).hello(session),
        )
      },
    );
    connectors['httpWatcher'] = _i1.EndpointConnector(
      name: 'httpWatcher',
      endpoint: endpoints['httpWatcher']!,
      methodConnectors: {
        'postLog': _i1.MethodConnector(
          name: 'postLog',
          params: {
            'log': _i1.ParameterDescription(
              name: 'log',
              type: _i1.getType<_i4.HttpLog>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['httpWatcher'] as _i3.HttpWatcherEndpoint).postLog(
            session,
            log: params['log'],
          ),
        ),
        'markUserActive': _i1.MethodConnector(
          name: 'markUserActive',
          params: {
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['httpWatcher'] as _i3.HttpWatcherEndpoint)
                  .markUserActive(
            session,
            phoneNumber: params['phoneNumber'],
          ),
        ),
        'markUserInactive': _i1.MethodConnector(
          name: 'markUserInactive',
          params: {
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['httpWatcher'] as _i3.HttpWatcherEndpoint)
                  .markUserInactive(
            session,
            phoneNumber: params['phoneNumber'],
          ),
        ),
        'logUpdates': _i1.MethodStreamConnector(
          name: 'logUpdates',
          params: {},
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['httpWatcher'] as _i3.HttpWatcherEndpoint)
                  .logUpdates(session),
        ),
      },
    );
  }
}
