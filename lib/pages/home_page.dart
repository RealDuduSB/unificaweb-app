import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _body() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.filter_list_alt)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/checkout');
                      },
                      icon: Icon(Icons.shopping_cart))
                ],
              ),
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
              color: Colors.orangeAccent,
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Ofertas (-10%)",
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
              leading: Icon(Icons.person),
              title: Text("Minha conta",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.of(context).pushNamed('/config');
              },
            ),
            ListTile(
              leading: Icon(Icons.draw),
              title: Text("Configurações",
                  style: GoogleFonts.lato(fontSize: 27, color: Colors.black)),
              onTap: () {
                Navigator.of(context).pushNamed('/config');
              },
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
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
