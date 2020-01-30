void main (){

}

//Funcion
demoTipo() {
  //Todo son objetos en dart.
  //Todas las variables contienen referencias a ojetos.
  int n = 3;
  double x = 0.05;
  String s = "Hola";
  String s2 = 'Hola2';
  bool b = false;

  //El valor por defecto de una variable no inicializada es "null".
  
  print('$n, $x, $s, $s2, $b');
}

demoVarDynamicNum(){
  //Variable sin especificar el tipo. Dart infiere el tipo, en este caso int.
  var y = 10;

  //Otro tipo de variable. Es un tipo especial que engloba a cualquier objeto, puede contener cualquier cosa.
  dynamic c;

  //num es "numerico" y es tipo base de 'double' y 'int'.
  num m = 5;

  print('$y, $c, $m')
}

demoConversion(){
  //Conversion numerico a String.
  int a = 5;
  double b = 3.141592;

  String sa = a.toString();
  String sa2 = '$a'; //Otra forma de convertir numero a String incluso mas rapida.  
  String sb = b.toString();
  String sc = 546.toString(); //Conversion de un literal. 
  String piAsString = 3.14159.toStringAsFixed(2); //Double a String con cantidad de decimales.

  //Conversion String a numero
  String sd = '956';
  String se = '2.78';

  int c = int.parse(sd);
  int d = double.parse(se);
}

interpolacionStrings(){
  //Interpolacion de Strings
  double euros = 45.70;
  String mensaje = 'Tengo $euros euros';
  String mensaje2 = 'Si tuviera 5 euros mas tendria ${euros + 5} ';

  print(mensaje);
  print(mensaje2);
}

stringsLargos(){
  //Literales de string seguidos se pegan.
  var texto = 'En un lugar de la mancha'
    'de cuyo nombre no quiero acordarme'
    'vivia un hidalgo...';

  //El + junta strings. Concatenacion clasica
  var cc = 'James ' + 'Bond';

  //Literal con lineas de por medio.
  var texto2 = """

  Un texto largo con varias lineas
  Esta es la segunda
  y esta la tercera

  """; //Se pueden utilizar comillas dobles o simples.

  print(texto);
  print(texto2);  
  print(cc);  
}

condicionesBooleanas(){
  //En if solo pueden ir "bool" o bien "dynamic" (que deberia ser bool).
  var a;
  if (a != null){
    print('a no es "null"');
  }

  //Comprobar si un String est vacio.
  var s = '';
  if (s.isEmpty){
    print("s esta vacio");
  }

}

demoListas(){
  //Listas (Arrays)
  
  //Lista que puede contener cualquier cosa.
  List<dynamic> cosas = [1, true, "Hola", 3.14];

  //Lista solo de un tipo de dato. En este caso enteros.
  List<int> primos = [2, 3, 5, 7, 11, 13];

  //Lista sin especificar el tipo, dart infiere que es una lista y que contiene cierto tipo de datos (segun lo que se le coloque dentro).
  var nums = [1, 2, 3, 4];

  //Especificar el tipo de un literal.
  var palabras = <String>[]; //Crea una lista vacia a la que se le pueden agregar Strings.

  palabras.add('Buenas');

  print(cosas);
  print(primos);
  print(palabras);

  //Añadir un elemento a la lista.
  primos.add(17);
  //Añadir varios elementos.
  primos.addAll([19, 23, 29]);

  print(primos);

  //Longitud de la lista.
  print(primos.length);

  //Acceder a las casillas de una lista.
  print(primos[0]); //Accedo a la primera casilla de la lista primos.
  print(primos[primos.length-1]); //Accedo a la utima casilla de una lista.
  print(primos[3]); //Accedo a la X casilla de una lista.
}

collectionIfFor(){
  var larga = true;
  var L = [
    1,
    2, 
    3,
    if(larga) 4, //Evita escribir toda una expresion, se fija si la condicion es "true" y si lo es agrega algo, en este caso un 4.
    5
  ];
  
  print(L);

    var max = 10;
    var M = [
    -1,
    for(int i = 1; i <= max; i++) i, //Agrega los numeros del 1 al 10.
    -1
  ];

  print(M);
}

demoSets(){
  //Los sets son conjuntos de numeros, practicamente lo mismo que una lista.
  
  //Set de determinado tipo.
  Set<int> primos = {2, 3, 5, 7, 11, 13};

  //Set que puede contener cualquier cosa.
  Set<dynamic> cosas = {null, 2, "Hola", true, [1]};

  //Set sin especificar el tipo de dato que va a contener, dart lo infiere.
  var numeros = {1, 2, 3, 4};

  //Conjunto vacio.
  var map_vacio = {}; //Esto es un Map;

  Set<dynamic> set_vacio = {}; //Esto es un Set;  
  var set_vacio = <String>{}; //Esto es un Set;  

  print(primos);
  print(cosas);
  print(numeros);

  //Añadir un elemento.
  primos.add(17);

  //Añadir varios.
  primos.addAll({19, 23, 29});
  numeros.addAll([5, 6, 7]); //Otra forma.

  print(primos);
  print(numeros);

  //Preguntar si contiene algun valor.
  if (primos.contains(2)){
    print("SI LO CONTIENE");
  }  

  //Longitud de un Set.
  print(primos.length);
}

demoMaps(){
  //Los Maps son como los objetos en JavaScript, el formato es clave:valor.
  
  //Map sin especificar el tipo, dart lo infiere.
  var M = {
    "nombre": "James",
    "apellido": "Bond",
    "edad":50
  }; //Map<String, dynamic>.

  //Map especificando el tipo.
  Map<int, String> numeros = {
    1:"uno",
    2:"dos",
    3:"tres"
  };

  //Map<dynamic, dynamic>.
  Map<dynamic, dynamic> cosas = {
    2:"dos",
    "dos":2,
    true:"verdadero",
    "falso":false
  };

  print(M);
  print(numeros);
  print(cosas);

  //Acceder a un valor.
  print(numeros[1]);
  print(M["nombre"]);

  //Agregar un valor.
  numeros[4] = "cuatro";

  print(numeros);

  //Longitud Map.
  print(numeros.length);

  //Agregar un Map a un Map.
  cosas.addAll(numeros);

  print(cosas);
}