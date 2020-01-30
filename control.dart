void main(){
 
//Llamada a la funcion hhssmm.
//var resultado = hhmmss(hs:4, min:50,  seg:9);

//Llamada a la funcion dia2string_A
print(dia2string_A(2));

}

//IF////////////////////////////////////////////////////////////

//El if es igual que en Java/JavaScript...

//hs: 4, min: 50, seg: 9 --> "04:50:09".
//StringBuffer: es una funcion que va guardadndo y concatenando lo que le pasemos.

String hhmmss({int hs = 0, int min = 0, int seg = 0}){
  var buf = StringBuffer(); //Tambien se le puede pasar un String base.

  wr(d){
    //Si es una sola linea de instruccion se pueden omitir las llaves.
    if (d < 10) buf.write(0); //Escribe en el StringBuffer un 0 y lo guarda.
    buf.write(d);
  }

  wr(hs);
  buf.write(":");
  wr(min);
  buf.write(":");
  wr(seg);

  return buf.toString(); //Este metodo devuelve el interior del StringBuffer.
}

//else if.

//Se le pasa el numero de dia de la semana y devuelve el String del dia.

//V1.
String dia2string_A(int dia){
  String sdia;

  if (dia == 0 || dia == 7) sdia = "Domingo";
  else if (dia == 1) sdia = "Lunes";
  else if (dia == 2) sdia = "Martes";
  else if (sdia == 3) sdia = "Miercoles";
  else if (dia == 4) sdia = "Jueves";
  else if (dia == 5) sdia = "Viernes";
  else if (dia == 6) sdia = "Sabado";
  else sdia = "El dia ingresado no es valido";

  return sdia;
}

List<String> dias = ["Domingo", "Lunes", "Martes", "Miercoles" ,"Jueves" ,"Viernes", "Sabado", "Domingo"];

  String dia2string_B(int dia) {
  if (dia < 8 && dia > -1){
    return dias[dia];
  } else{
    return "El dia ingresado no es valido";
  }
}

