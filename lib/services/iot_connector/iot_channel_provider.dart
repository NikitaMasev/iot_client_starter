abstract class IotChannelProvider {
  Stream<String> watchRawChannel();

  void sinkRawData(final String data);
}
