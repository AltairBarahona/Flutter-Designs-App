import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class MenuProvider {
  List<dynamic> opciones = [];

  MenuProvider() {
    cargarOpciones();
  }

  Future<List<dynamic>> cargarOpciones() async {
    var data = await rootBundle.loadString("data/menu_opts.json");
    Map dataMap = json.decode(data);
    opciones = dataMap["rutas"];
    return opciones;
  }
}

final menuProvider = MenuProvider();
