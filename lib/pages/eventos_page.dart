import 'package:flutter/material.dart';

class Eventos extends StatefulWidget {
  const Eventos({Key? key}) : super(key: key);

  @override
  State<Eventos> createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos'),
      ),
      body: Center(
        child: Text('Nenhum evento ainda a ser mostrado aqui.'),
      ),
    );
  }
}
