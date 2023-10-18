import 'package:iot_client_starter/data/sources/iot_provider/websocket_channel/raw_data_channel_provider.dart';
import 'package:iot_internal/iot_internal.dart';

class CryptoChannelProvider implements RawDataChannelProvider {
  CryptoChannelProvider({
    required this.rawDataChannelProvider,
    required this.crypto,
  });

  final RawDataChannelProvider rawDataChannelProvider;
  final Crypto crypto;

  @override
  bool send(final String data) {
    final encrypted = crypto.encrypt(data);
    return rawDataChannelProvider.send(encrypted);
  }

  @override
  Stream<String> watchModel() => rawDataChannelProvider
      .watchModel()
      .map(crypto.decrypt)
      .where((final data) => data.isNotEmpty);
}
