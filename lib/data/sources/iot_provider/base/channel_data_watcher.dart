abstract interface class ChannelDataWatcher<T> {
  Stream<T> watchModel();
}
