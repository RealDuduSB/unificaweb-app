import 'package:flutter/material.dart';
import 'package:unificadawebapp/pages/eventos_page.dart';
import 'package:unificadawebapp/pages/home_page.dart';

import '../controller/config_controller.dart';
import '../pages/config_page.dart';
import '../pages/sobre_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) => MaterialApp(
              theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light,
              ),
              initialRoute: '/home',
              routes: {
                '/home': (context) => HomePage(),
                '/sobre': (context) => Sobre(),
                '/config': (context) => ConfigPage(),
                '/eventos': (context) => Eventos(),
              },
              debugShowCheckedModeBanner: false,
            ));
  }
}

class Config {}
