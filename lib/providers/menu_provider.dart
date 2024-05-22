import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{
  List<dynamic> opciones=[

  ];
//constructor
  _MenuProvider(){

  }
  // metodo que obtiene la informacion del archivo json
  Future<List<dynamic>> cargarOpciones() async{
    final resp = await rootBundle.loadString('assets/menu_opts.json');
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;

  }
}
final menuProvider = new _MenuProvider();