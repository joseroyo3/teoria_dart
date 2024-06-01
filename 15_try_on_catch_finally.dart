void main() async {
  print('Inicio');
  // await == esperate al resultado
  try {
    final value = await httpGet('http://www.google.es');
    print('Exito! $value');
  } on Exception catch (err) {
    // cogemos el error y lo imprimimos $err
    //se especifica el error
    print('Tenemos una Exception - $err');
  } catch (err) {
    print('OOP! Algo terrible pasó');
  } finally {
    print('Fin del try y catch');
  }

  print('FIN');
}

/*Dart sabe que hay trabajo async, y no terminará hasta finalizar todo
*/

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw new Exception('No hay parametros en el URL'); // Exception

  // throw 'Error en la petición'; // OOP!
  // return 'Tenemos un valor de la petición';
}
