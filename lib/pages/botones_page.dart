import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  final styleTitulo = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final styleSubTitulo = TextStyle(
    fontSize: 17,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _titulos(),
                  _botonesRedondeados(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  Widget _fondoApp() {
    final gradiente = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0, 0.6),
          end: FractionalOffset(0.0, 1),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ],
        ),
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            // color: Colors.pink,
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 90, 188, 1),
              Color.fromRGBO(255, 160, 172, 1),
            ])),
      ),
    );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -55,
          left: -10,
          child: cajaRosa,
        ),
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Classify transaction",
              style: styleTitulo,
            ),
            Container(
              width: 235,
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Classify this transaction into a particular category",
                style: styleSubTitulo,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
                caption: TextStyle(
              color: Color.fromRGBO(116, 117, 152, 1),
            )),
      ),
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.calendar_today, size: 30),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.bubble_chart, size: 30),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: Icon(Icons.supervised_user_circle, size: 30),
        ),
      ]),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, "General"),
            _crearBotonRedondeado(Colors.pink, Icons.directions_bus, "Bus"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, Icons.shop, "Comprar"),
            _crearBotonRedondeado(
                Colors.indigoAccent, Icons.insert_drive_file, "Archivo"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(
                Colors.cyan, Icons.movie_filter, "Entretenimiento"),
            _crearBotonRedondeado(Colors.orange, Icons.cloud, "Cloud"),
          ],
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, Icons.collections, "Fotos"),
            _crearBotonRedondeado(
                Colors.indigoAccent, Icons.help_outline, "Ayuda"),
          ],
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 180,
            // margin: EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 1),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 30,
                  child: Icon(
                    icono,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Text(
                  texto,
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
