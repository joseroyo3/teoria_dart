import 'dart:ffi';

void main() {
  final mySquare = Square(side: 10);

  // mySquare.side = -5 NO QUEREMOS QUE SEA PUBLIC, y menos negativo

  mySquare

  print('Area: ${mySquare.area}');
}

class Square {
  // _ significa PRIVADO
  double _side;

// Constructor
  Square({required double side}) : _side = side;

// Getter/Setter,única manera
  double get area {
    return _side * _side;
  }

  void set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Value must be >= 0';
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
