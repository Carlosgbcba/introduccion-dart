import 'persona.dart';

//Creacion de una clase basica.
class Hora (){
  //int hs, min, seg;

  //Inicializar los atributos.
  int hs = 0, min = 0, seg = 0;

}


//Creacion de una clase con constructor 
//(es mas comoda y rapida a la hora de cargar los datos es como una funcion).
class Reloj{
  int hora, minuto, segundo;

  //Constructor.
  /*
  Reloj(int hora, int minuto, int segundo){
    this.hora = hora;
    this.minuto = hora;
    this.segundo = hora;
  }
  */

  //Mismo constructor abreviado V1
  Reloj(this.hora, this.minuto, this.segundo);
  //Mismo constructor abreviado V2 con parametros nombrados.
  //Reloj({this.hora, this.minuto, this.segundo});  //Muy utlizado para los widgets de flutter.
  
  //Solo se puede tener un constructor con el mismo nombre.
  //La forma de hacer sobrecarga es poner el nombre del constructor .algo
  Reloj.nombrado({this.hora, this.minuto, this.segundo});

  //Constructor que inicializa a 0 los atributos. Tambien se podrian haber inicializado al momento de declararlos para ahorrarse esto.
  Reloj.a_cero(){
    this.hora = 0;
    this.minuto = 0;
    this.segundo = 0;
  }

}

//Clase Punto2D
class Punto2D{
  final double x, y;

  Punto2D(this.x, this.y);

  //Este constructor inicaliza las variables, podemos elegir que queremos que tenga la variable final.
  //La podemos asignar una vez, cosa que no se podria si se inicializara al declararla.
  Punto2D.cero() : x = 0, y = 0;

  //Otro ejemplo.
  Punto2D.fromJson(Map<String, dynamic> json)
    : x = json['x'], y = json['y'];
}

/*
//Metodos: Un metodo es una funcion asociada a un objeto. Trabaja con los atributos y puede devolver o no algo.
class Persona {
  String nombre, apellido;

  Persona({this.nombre, this.apellido});

  //Metodo. Se define igual que una funcion pero dentro de una clase.
  String nombre_completo() => '$nombre $apellido';

  //Definiendo el metodo toString luego a la hora de imprimirlo solo basta con:
  //print(objeto) en vez de print(objeto.toString) que es mas comodo, las 2 formas funcionan.
  String toString() => 'Persona("$nombre $apellido")'
}
*/

void main(){
  var p1 = Persona(nombre:'Carlos', apellido:'Garcia');

  print(p1.nombre_completo());
  
  //Llamada al metodo toString.
  print(p1);
}

void main2(){
  //Crear un objeto "a".
  //var a = new Hora();
  var a = Hora();

  //Rellenar los parmetros.
  a.hs = 16;
  a.min = 36;
  a.seg = 45;

  print('${a.hs}:${a.min}:${a.seg}');

  //Creacion de un objeto "b". Y asignacion de los valres como parametro.
  var b = Reloj(16, 36, 45);

  print('${b.hora}:${b.minuto}:${b.segundo}');

  var p2 = Punto2D.fromJson({ 'x':0.5, 'y':7.1});
  
}
