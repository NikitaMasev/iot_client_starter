abstract interface class StateWatcher<T> {
  Stream<T> watchState();

  Future<T> lastState();
}
