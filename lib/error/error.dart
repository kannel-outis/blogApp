class BError {
  final String message;

  BError(this.message);
  @override
  String toString() {
    return '$message';
  }
}
