void main() async {
  print('Inicio');
  // await == esperate al resultado
  try {
    final value = await httpGet('http://www.google.es');
    print('Exito! $value');
  } on Exception {
    //se especifica el que error
    print('Tenemos una Exception');
  } catch (err) {
    print('OOP! Algot terrible pasó');
  } finally {
    print('Fin del try y catch');
  }

  print('FIN');
}

/*Dart sabe que hay trabajo async, y no terminará hasta finalizar todo
*/

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw new Exception('No hay parametros en el URL');

  //throw 'Error en la petición';
  return 'Tenemos un valor de la petición';
}
