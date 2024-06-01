void main() {
  emitNumer().listen((value) {
    print('Stream value $value');
  });
}

// async* regresa Stream
Stream emitNumer() async* {
  final valuesToEmit = [1, 2, 30, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 2));
    yield i; //yield es como "ten este valor de momento"
  }
}
