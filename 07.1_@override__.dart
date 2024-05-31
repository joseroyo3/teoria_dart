void main() {
  final Hero wolverine = new Hero(name: 'Logan', power: 'Regeneracion');
  final wolverine1 = Hero(name: 'Logan');
  print(wolverine.toString());
  print(wolverine.name); //Logan
  print(wolverine.power); //Regeneracion

  print('Poder: ${wolverine1.power}'); //Regeneracion
}

class Hero {
  // Declaramos
  String name;
  String power;

  //          Constructor
  //   Hero(String pName, String pPower)
  //       : name = pName,
  //         power = pPower;
  // }

  // voy a marcar que sean obligatorios con {requiered }
  Hero({required this.name, this.power = 'Sin poder'});

  //sobrescribo el comportamiento nativo de toString()
  // recomendado ponerlo y buena práctica
  @override
  String toString() => "toString: $name y $power";
}
