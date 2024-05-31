void main() {
  final ironMan = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(ironMan.toString());

  final Map<String, dynamic> rawJson = {
    'name': 'SpiderMan',
    'power': 'Trepar',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);
  print(ironman);

  // final ironManNew = Hero( // mejor crear un constructor .fromJson
  //     isAlive: rawJson['isAlive'] ?? false,
  //     power: rawJson['power']?? 'nofound',
  //     name: rawJson['name']?? 'nofound');
}

//CLASES
class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    // TODO: implement toString
    return '$name, $power, ${isAlive ? 'isAlive' : 'isNotAlive'}';
  }
}
