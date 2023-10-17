abstract interface class IotChannelProvider {
  Stream<String> watchRawChannel();

  void sinkRawData(final String data);
}
