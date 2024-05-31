void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 8, 8, 9, 10, 10];
  print('List original: $numbers');
  print('List length: ${numbers.length}');
  print('Nº1 in list: ${numbers[0]}');
  print('Primero/último ${numbers.first}/${numbers.last}');

  // Ahora se imprime entre ( ) porque se convierte en Iterable
  print('Reverser: ${numbers.reversed}');
  final reverserNumbers = numbers.reversed; // Iterable
  print('List: ${reverserNumbers.toList()}'); // Lo cokkmbierto en List
  print('Set: ${reverserNumbers.toSet()}'); // Lo combierto en Set

// mejor legibilidad si le cascamos el int antes de num (no es necesario)
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5; // true
  });

  print('Numeros > 5: ${numbersGreaterThan5}'); // Iterable
  print('Numeros > 5 (Set): ${numbersGreaterThan5.toSet()}'); // Set
}
