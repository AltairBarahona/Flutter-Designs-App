import 'package:designs_app/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Diseños - Altair"),
        ),
        body: _crearLista());
  }

  Widget _crearLista() {
    return FutureBuilder(
      future: menuProvider.cargarOpciones(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearOpciones(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _crearOpciones(List<dynamic> data, BuildContext context) {
    final List<Widget> listaOpciones = [];
    if (data == null) {
      return [];
    }

    data.forEach(
      (element) {
        final tempListTile = ListTile(
          title: Text(
            element["texto"],
          ),
          onTap: () {
            Navigator.pushNamed(context, element["ruta"]);
          },
        );

        listaOpciones.add(tempListTile);
      },
    );

    return listaOpciones;
  }
}
