void main() async {
  print('Inicio');
  // await == esperate al resultado
  try {
    final value = await httpGet('http://www.google.es');
    print(value);
  } catch (err) {
    print('Tenemos el error $err');
  }

  // httpGet('http://www.google.es').then((value) {
  //   print(value);
  // }).catchError((err) {
  //   print('Error: $err');
  // });
  print('FIN');
}

/*Dart sabe que hay trabajo async, y no terminará hasta finalizar todo

*/

Future<String> httpGet(String url) async {
  /* async obliga a Future

  */

  // primero los segundos COMA lo que retornará
  await Future.delayed(const Duration(seconds: 5));

  throw 'Error en la petición';
  // return 'Tenemos un valor de la petición';

  // return Future.delayed(const Duration(seconds: 1), () {
  //   throw 'Error en la petición http';
  //return 'Respuesta de la peticion http';
  // });
}
