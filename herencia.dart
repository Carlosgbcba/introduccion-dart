
//Declarar una clase como abstracta.
abstract class Fruta {
  String nombre;

  Fruta(this.nombre);

  //Cuando se declara un metodo sin codigo este queda como abstracto.
  double get gramos;
  bool get femenina;

  void come(){
    //Expresion ternaria: Es un version resumida del if else
    var det = femenina ? 'una':'un';
    
    print('Te has comido $det $nombre($gramos g.)');
  }
}

//Hacer que una clase herede de otra (en este caso Fruta).
class Manzana extends Fruta {
  //Llamada al constructor de la clase base.
  Manzana() : super('manzana');

  bool get femenina => true;   
  double get gramos => 250;   
}

class Melon extends Fruta {
  Melon() : super('melon');

  bool get femenina => false;   
  double get gramos => 1500;  

  //Sobrecarga de metodos.
  void come(){
    print('Vamos a abrir el melon primero...')
    //Llamada al metodo come de la clase base.
    super.come();
  } 
}

class Arandano extends Fruta {
  Arandano() : super('arandano');

  bool get femenina => false;
  double get gramos => 10;
}

//Polimorfismo.
void main3(){
  var frutas = [
    for (var i = 0; i < 3; i++) Manzana(),
    melon(),
    for (var i = 0; i < 10;i++)
  ];

  //Metodo para mezclar cosas dentro de una lista.
  frutas.shuffle();

  for (var f in frutas) {
    f.come();
  }
}

void main2(){
  var m = Manzana();
  m.come();

  var m2 = Melon();
  m2.come();

  var a = Arandano():
  a.come();
}

//Mixins

abstract class Animal {
  String nombre;
  Animal(this.nombre);
}

//Un mixin es una lista de campos o metodos. Trozo de una clase.
mixin PosicionMixin {
  num _x = 0, _y = 0;

  num get x => _x;
  num get y => _y;

  set x(num x) => _x = x;
  set y(num y) => _y = y;

  List<num> get pos => [_x, _y];

  void mueve(int dx, int dy){
    _x = dx;
    _y = dy;
  }
}

//Hereda Animal y PosicionMixin. Pero Leon sigue siendo un animal.
class Leon extends Animal with PosicionMixin{
  Leon() : super('leon');
}

void main(){
  var x = Leon();

  x.mueve(5, 3);
  x.mueve(2, 2);

  print(x.pos);
}