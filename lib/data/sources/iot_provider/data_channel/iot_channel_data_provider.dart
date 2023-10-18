import 'dart:async';

import 'package:iot_client_starter/data/sources/iot_provider/data_channel/channel_data_provider.dart';
import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/raw_data_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';
import 'package:iot_models/iot_models.dart';

class IotChannelDataProvider implements ChannelDataProvider {
  IotChannelDataProvider({
    required this.rawDataChannelProvider,
    required this.clientCodec,
    required this.iotDevicesCodec,
    required this.communicatorSignDecoder,
  }) {
    _runSubscription();
  }

  final RawDataChannelProvider rawDataChannelProvider;
  final ClientCodec clientCodec;
  final IotDevicesCodec iotDevicesCodec;
  final CommunicatorSignDecoder communicatorSignDecoder;

  final _controllerClient = StreamController<Client>.broadcast();
  final _controllerIotDevice =
      StreamController<IotDevicesDataWrapper>.broadcast();

  late final StreamSubscription _subChannel;

  void _runSubscription() {
    _subChannel = rawDataChannelProvider.watchModel().listen(
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
  Stream<IotDevicesDataWrapper> watchIotDevicesModel() =>
      _controllerIotDevice.stream;

  @override
  bool send(final Client data) {
    final encodedClient = clientCodec.encode(data);
    return rawDataChannelProvider.send(encodedClient);
  }

  @override
  Stream<Client> watchModel() => _controllerClient.stream;
}
