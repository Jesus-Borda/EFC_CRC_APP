import 'package:flutter/material.dart';

class Materia {
  late String nombreMateria;
  late String InfoMateria;
  late String Maestro;
  late String AnoDictada;
  late String Estado;

  Materia (nombreMateria,InfoMateria, Maestro, AnoDictada , Estado){
    this.nombreMateria = nombreMateria;
    this.InfoMateria=InfoMateria;
    this.Maestro=Maestro;
    this.AnoDictada=AnoDictada;
    this.Estado=Estado;

    
  }

}