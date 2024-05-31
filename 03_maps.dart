void main() {
  //Al no especificar el tipo de dato, lo va a calcular él solo
  //Referente a poner solo final pokemon = {};
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  final pokemons = {1: 'ABC', 2: 'BCD', 3: 'CDE'};
  print(pokemons);

  print(pokemon);

  // Imprimimos solo el 'name' del mapa
  print('Name: ${pokemon['name']}');

  print('Back: ${pokemon['sprites'][1]}');
  print('Front: ${pokemon['sprites'][2]}');
}
