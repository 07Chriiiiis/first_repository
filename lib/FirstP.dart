import 'package:flutter/material.dart';
import 'package:flutter_application_1/SecondP.dart';

class FirstP extends StatefulWidget {
  @override
  State<FirstP> createState() => _FirstPState();
}

class _FirstPState extends State<FirstP> {
  final months = {
    "JANEIRO": Color.fromARGB(255, 184, 21, 21),
    "FEVEREIRO": Color.fromARGB(255, 9, 56, 246),
    "MARÇO": Color.fromARGB(255, 254, 196, 21),
    "ABRIL": Color.fromARGB(222, 3, 121, 12),
    "MAIO": Color.fromARGB(255, 184, 21, 21),
    "JUNHO": Color.fromARGB(255, 9, 56, 246),
    "JULHO": Color.fromARGB(255, 254, 196, 21),
    "AGOSTO": Color.fromARGB(222, 3, 121, 12),
    "SETEMBRO": Color.fromARGB(255, 184, 21, 21),
    "OUTUBRO": Color.fromARGB(255, 9, 56, 246),
    "NOVEMBRO": Color.fromARGB(255, 254, 196, 21),
    "DEZEMBRO": Color.fromARGB(222, 7, 7, 7),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      body: NestedScrollView(
        headerSliverBuilder: (context, condition) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'CALENDÁRIO', 
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20),
                ),
                background: Image.network(
                  'https://i.pinimg.com/originals/1a/67/b2/1a67b264936e8d6b7863fa3a39a267d1.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: months.length,
          itemBuilder: (context, index) => month(
            data: months.keys.toList()[index],
            color: months.values.toList()[index],
          ),
        ),
      ),
    );
  }

  Padding month({required String data, color}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => SecondP(data)),
          );
        },
        child: Container(
          margin: EdgeInsets.only(right: 3, left: 3),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: color ?? Color.fromARGB(255, 155, 22, 13),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  data,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
