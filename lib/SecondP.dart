import 'package:flutter/material.dart';

class SecondP extends StatelessWidget {
  String mes;

  SecondP(this.mes);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 211, 251),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 99, 182, 250),
        title: Text(mes),
      ),
    );
  }
}
