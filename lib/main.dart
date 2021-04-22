import 'package:designs_app/pages/basico_page.dart';
import 'package:designs_app/pages/botones_page.dart';
import 'package:designs_app/pages/home_page.dart';
import 'package:designs_app/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    //     // systemNavigationBarIconBrightness: Brightness.light,
    //     ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      // initialRoute: "home",
      routes: {
        "/": (context) => HomePage(),
        "basico": (context) => BasicoPage(),
        "scroll": (context) => ScrollPage(),
        "botones": (context) => BotonesPage(),
      },
    );
  }
}
