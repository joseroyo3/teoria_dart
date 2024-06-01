void main() {
  // tiene que haber alguien escuchado para que hable
  emitNumbers().listen((value) {
    print('Stream value $value');
  });
}

// Flujo de datos en el tiempo
Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 2), (value) {
    print('Desde periodic $value');
    return value;
  }).take(5);
  // take obtiene tantos values
}
