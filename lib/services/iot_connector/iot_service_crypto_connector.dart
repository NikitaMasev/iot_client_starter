import 'package:iot_client_starter/services/iot_connector/iot_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';

class IotServiceCryptoConnector implements IotChannelProvider {
  IotServiceCryptoConnector({
    required final this.iotChannelProvider,
    required final this.crypto,
  });

  final IotChannelProvider iotChannelProvider;
  final Crypto crypto;

  @override
  void sinkRawData(final String data) {
    final encrypted = crypto.encrypt(data);
    iotChannelProvider.sinkRawData(encrypted);
  }

  @override
  Stream<String> watchRawChannel() => iotChannelProvider
      .watchRawChannel()
      .map(crypto.decrypt)
      .where((final data) => data.isNotEmpty);
}
