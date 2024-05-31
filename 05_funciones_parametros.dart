void main() {
  greetEveryone(); // no imprime así, melón

  print(greetEveryone());
  print(holaMundo());

  print('La suma de 2+3=${addTwoNumbers(2, 3)}');
  print(addTwoNumbersOptional(3));
}

// Puedes no especificar que es String, pero es buena práctica
greetEveryone() {
  return 'Hola a todos!';
}

// Función flecha
String holaMundo() => 'Hola Mundo!';

int addTwoNumbers(int a, int b) => a + b;

// Las [ ] significa opcional
int addTwoNumbersOptional(int a, [int? b]) {
  b ??= 0; // si es null, vale 0
  // es atajo como b = b + 1;
  // es atajo como b++;
  return a + b;
}
