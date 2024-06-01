void main() {
  print('Inicio');
  httpGet('http://www.google.es').then((value) {
    print(value);
  }).catchError((err) {
    print('Error: $err');
  });
  print('FIN');
}

/*Dart sabe que hay trabajo async, y no terminará hasta finalizar todo

*/

Future<String> httpGet(String url) {
  // primero los segundos COMA lo que retornará
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';
    //return 'Respuesta de la peticion http';
  });
}
