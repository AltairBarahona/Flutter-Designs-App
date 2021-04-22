import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shape: MaterialStateProperty.all(StadiumBorder()),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text("Bienvenido", style: TextStyle(fontSize: 28)),
          ),
        ),
      ),
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1),
    );
  }

  Widget _imagenFondo() {
    return Container(
      // width: 230,
      // height: 200,
      child: Image(image: AssetImage("assets/scroll-1.png")),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50);
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Text("11°", style: estiloTexto),
            Text("Jueves", style: estiloTexto),
            Spacer(),
            Icon(Icons.keyboard_arrow_down_sharp,
                color: Colors.white, size: 100),
          ],
        ),
      ),
    );
  }
}
