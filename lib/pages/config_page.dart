import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/config_controller.dart';

class ConfigPage extends StatefulWidget {
  const ConfigPage({Key? key}) : super(key: key);

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  bool isDarkTheme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configurações",
            style: GoogleFonts.lato(fontSize: 20, color: Colors.white)),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Trocar tema ",
                    style: GoogleFonts.lato(fontSize: 25, color: Colors.black)),
                TrocaTema(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TrocaTema extends StatelessWidget {
  const TrocaTema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
