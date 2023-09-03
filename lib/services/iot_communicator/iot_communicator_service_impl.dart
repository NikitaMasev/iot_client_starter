import 'dart:async';

import 'package:iot_client_starter/services/iot_communicator/iot_communicator_service.dart';
import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/iot_models.dart';

class IotCommunicatorServiceImpl implements IotCommunicatorService {
  IotCommunicatorServiceImpl({
    required this.iotChannelProvider,
    required this.clientCodec,
    required this.iotDevicesCodec,
    required this.communicatorSignDecoder,
  }) {
    _runSubscription();
  }

  final IotChannelProvider iotChannelProvider;
  final ClientCodec clientCodec;
  final IotDevicesCodec iotDevicesCodec;
  final CommunicatorSignDecoder communicatorSignDecoder;

  final _controllerClient = StreamController<Client>.broadcast();
  final _controllerIotDevice =
      StreamController<IotDevicesDataWrapper>.broadcast();

  late final StreamSubscription _subChannel;

  void _runSubscription() {
    _subChannel = iotChannelProvider.watchRawChannel().listen(
      (final rawData) {
        final signModel = communicatorSignDecoder.decode(rawData);
        switch (signModel) {
          case Sign.client:
            final client = clientCodec.decode(rawData);
            _controllerClient.add(client);
            break;
          case Sign.iotDevices:
            final iotDevices = iotDevicesCodec.decode(rawData);
            _controllerIotDevice.add(iotDevices);
            break;
          case Sign.unknown:
            break;
          case Sign.upsData:
            break;
          case Sign.lampData:
            break;
          case Sign.ledData:
            break;
        }
      },
      onError: (final err) {
        if (_controllerClient.hasListener) {
          _controllerClient.addError(err as Object);
        }
        if (_controllerIotDevice.hasListener) {
          _controllerIotDevice.addError(err as Object);
        }
      },
    );
  }

  @override
  void sendClient(final Client client) {
    final encodedClient = clientCodec.encode(client);
    iotChannelProvider.sinkRawData(encodedClient);
  }

  @override
  Stream<Client> watchClientModel() => _controllerClient.stream;

  @override
  Stream<IotDevicesDataWrapper> watchIotDevicesModel() =>
      _controllerIotDevice.stream;
}
