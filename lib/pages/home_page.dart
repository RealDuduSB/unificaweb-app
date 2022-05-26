import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unificadawebapp/pages/config_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TrocaTema trocaTema = TrocaTema();
  List<String> items = ['Sistemática', 'Monarca', 'Odonto'];
  String? categoria;

  Widget _body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            /* BARRA DE PESQUISA
            Container(
                padding: EdgeInsets.all(10),
                height: 70,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Pesquisa",
                    icon: Icon(Icons.search),
                  ),
                )),*/
          ],
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.orangeAccent,
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Novidades",
                style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
            Container(
              height: 200,
              width: 250,
              color: Colors.blue,
            ),
          ],
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Inicio',
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.popAndPushNamed(context, '/home');
              },
            ),
            DropdownMenuItem(
                child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton<String>(
                    hint: Text('Atléticas'),
                    value: categoria,
                    icon: const Icon(Icons.toc),
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    underline: Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    items: items
                        .map((item) => DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.lato(
                                  fontSize: 27.0,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            )))
                        .toList(),
                    onChanged: (item) => setState(() => categoria = item!),
                  ),
                ],
              ),
            )),
            ListTile(
              title: Text("Eventos",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.of(context).pushNamed('/eventos');
              },
            ),
            ListTile(
              title: Text("Sobre",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.of(context).pushNamed('/sobre');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("UNIFICA WEB"),
        backgroundColor: Colors.blue[700],
      ),
      body: Stack(children: [
        Container(
          color: Colors.orangeAccent,
        ),
        _body(),
      ]),
    );
  }
}
