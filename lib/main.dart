import 'package:flutter/material.dart';

void main() => runApp(Calendar());

class Calendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendário',
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}
