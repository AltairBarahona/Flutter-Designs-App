import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final styleTitulo = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  final styleSubTitulo = TextStyle(fontSize: 16, color: Colors.black45);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _crearImagen(),
            _crearTitular(),
            _crearOpcionesAzules(),
            _crearDescripcion(),
            _crearDescripcion(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          "https://i0.wp.com/sinembargo.mx/wp-content/uploads/2020/01/avatar-2-1.jpg",
        ),
        fit: BoxFit.cover,
        height: 250,
      ),
    );
  }

  Row _crearTitular() {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Paisajes de Avatar", style: styleTitulo),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text("Parque temático Avatar - Disney",
                    style: styleSubTitulo),
              ),
            ],
          ),
        ),
        Spacer(),
        Icon(Icons.star, color: Colors.red),
        Text("41", style: styleSubTitulo),
        SizedBox(width: 30),
      ],
    );
  }

  Widget _crearOpcionesAzules() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _elementoAzul(iconData: Icons.call, texto: "CALL"),
        _elementoAzul(iconData: Icons.near_me, texto: "ROUTE"),
        _elementoAzul(iconData: Icons.share, texto: "SHARE"),
      ],
    );
  }

  Widget _crearDescripcion() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Column _elementoAzul({IconData iconData, String texto}) {
    return Column(
      children: [
        Icon(iconData, color: Colors.blue[400], size: 35),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            texto,
            style:
                TextStyle(color: Colors.blue[400], fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
