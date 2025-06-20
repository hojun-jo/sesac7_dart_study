class StrongBox<T> {
  T? item;

  void put(T item) {
    this.item = item;
  }

  T? get() => item;
}
