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
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
                padding: EdgeInsets.all(16),
                height: 70,
                width: 250,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Pesquisa",
                    hintStyle:
                        GoogleFonts.lato(fontSize: 15, color: Colors.black),
                    icon: Icon(
                      Icons.search,
                      color: Color.fromARGB(255, 5, 63, 110),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 5, 63, 110),
                          width: 3,
                        )),
                  ),
                  //
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Loja",
                    style: GoogleFonts.lato(
                      fontSize: 15,
                      color: Color.fromARGB(255, 5, 63, 110),
                    )),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.store,
                      color: Color.fromARGB(255, 5, 63, 110),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Ingressos",
                    style: GoogleFonts.lato(fontSize: 15, color: Colors.black)),
                Container(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.style_sharp,
                      color: Color.fromARGB(255, 5, 63, 110),
                    ),
                  ),
                ),
              ],
            ),
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
              color: Color.fromARGB(255, 5, 63, 110),
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Novidades",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color.fromARGB(255, 5, 63, 110),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 12.0),
                      height: 50,
                      child: Container(
                        child: Text(
                            "Desenvolvido pela atletica da UNIFRAN - Sistemática",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.black)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 5, 63, 110),
                          ),
                          child: Container(
                            child: Image.asset(
                              "assets/images/Eduardo.png",
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Eduardo S. Borges",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 5, 63, 110),
                          ),
                          child: Container(
                            child: Image.asset(
                              "assets/images/Gabriel.png",
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Gabriel Neves",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 5, 63, 110),
                          ),
                          child: Container(
                            child: Image.asset(
                              "assets/images/Speretta.png",
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Joao Victor Speretta",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 5, 63, 110),
                          ),
                          child: Container(
                            child: Image.asset(
                              'assets/images/Chrystian.png',
                              height: 50,
                              width: 50,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0)),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text("Chrystian Alvarenga",
                            style: GoogleFonts.lato(
                                fontSize: 15, color: Colors.black))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
    //Bottom
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "UNIFICA WEB",
              style: GoogleFonts.lato(fontSize: 27, color: Colors.white),
            ),
            Image.asset(
              "assets/images/SISTEMATICA LOGO.PNG",
              fit: BoxFit.contain,
              height: 50,
              width: 50,
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 5, 63, 110),
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
