class Persona {
  //Para hacer algo privado en dart basta con poner al comienzo del nombre un guion bajo.
  String _nombre, _apellido;

  Persona({this._nombre, this._apellido});

  //get y set. Forma "clasica".
  String getNombre() => _nombre;
  String getApellido() => _apellido;

  void setNombre(String nombre) => this.nombre = nombre;
  void setApellido(String apellido) => this.apellido = apellido;

  //get y set. Forma 2.
  /*
  String get nombre => _nombre;
  String get apellido() => _apellido;

  void set nombre(String nombre) => _nombre = nombre;
  void set apellido(String apellido) => _apellido = apellido;
  */

  String nombre_completo() => '$_nombre $_apellido';

  String toString() => 'Persona("$_nombre $_apellido")'
}