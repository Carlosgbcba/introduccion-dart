void main () {
  print(max3(3, 4, 2));
}

//Funcion especificando lo que va a devolver.
int max3(int a, int b, int c){
  int r = a;

  if (b > r) r = b;
  if (c > r) r = c;

  return r;
}

//Si no hay tipo de retorno la funcion devolvera null de todas formas.
f(){
  print("NO hago nada bueno");
}

//Parametros/////////////////////

//Parametros posicionales.//////
//Funcion con parametros obligatorios.
String transforma_A(String s, bool mayusc, int exclama){
  if (mayusc){
    s = s.toUpperCase(); //Este metodo pasa un String a mayusculas.
  }

  s += '!' * exclama;

  return s;
}

//Funcion con algunos parmetros NO obligatorios. Tambien se podria hacer con parametros por defecto, para agregar uno se pone al lado
//del parametro en cuestion un igual seguido del valor por defecto que queramos agregar.
String transforma_B(String s, [bool mayusc, int exclama]){
  if (mayusc != null && mayusc){
    s = s.toUpperCase(); //Este metodo pasa un String a mayusculas.
  }

  if (exclama != null){
    s += '!' * exclama;
  }

  return s;  
}

//Parametros nombrados////////////
//Estos parametros son opcionales y pueden ir en cualquier orden, se declaran con llaves.
String transforma_C(String s, {bool mayusc, int exclama}){//Tambien se le pueden poner valores por defecto.
  if (mayusc != null && mayusc){
    s = s.toUpperCase(); //Este metodo pasa un String a mayusculas.
  }

  if (exclama != null){
    s += '!' * exclama;
  }

  return s;  

  //Se pueden convertir en obligatorios los parametros nombrados ponido @required aunque para eso hay que importar.

  //para llamarlo:
  //transforma_C("palabra nueva", exclama:3, mayusc:true);
} 

//Las funciones son valores.
void muestra_lista(List<dynamic> lista){
  lista.forEach(print); //Invoca a la funcion print y muestra todos los elementos que reciba por parametros en la lista.
}

//Funciones anonimas (sin nombre).
var dup = (double x){ return 2.0 * x; };

void muestra_lista_B (List<dynamic> lista) {
  lista.forEach( (elem){
    print('Elemento -> $elem');
  });
}

//Funciones flecha.
var triple_A = (num x){ return 3 * x}; //Funcion anonima normal.
var triple_B = (num x) => 3 * x; //Funcion flecha.

void muestra_lista_C(List lista) 
  => lista.forEach((elem) => print('elem -> $elem'));

//Closures (clausuras).
//1. Las funciones son valores
//  (por tanto se pueden devolver como resultados de otra funcion).
//2. Si estan anidadas tienen acceso al entorno de la
//  funcion que las contiene.

nuevoSumador(double dx){
  return (double x) => x * dx; 
} 


