import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;// se import para leer json

class _MenuProvider{

List<dynamic> opciones = [];



Future<List<dynamic>> cargarData() async{

final resp = await rootBundle.loadString('data/menu_opts.json');// se usa para cargar Json


  Map dataMap = json.decode(resp);// pasa json a la variable dataMap
  opciones = dataMap['rutas'];// se pasa a la variable opciones


 return opciones;
}

}

final menuProvider = _MenuProvider();