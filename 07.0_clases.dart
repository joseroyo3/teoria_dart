void main() {
  final Hero wolverine = new Hero('Logan', 'Regeneracion');
  print(wolverine);
  print(wolverine.name); //Logan
  print(wolverine.power); //Regeneracion
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

  Hero(this.name, this.power);
}
