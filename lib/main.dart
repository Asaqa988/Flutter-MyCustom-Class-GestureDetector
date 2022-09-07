import 'package:app/screens/sc1.dart';
import 'package:app/screens/sc2.dart';
import 'package:app/screens/sc3.dart';
import 'package:app/screens/sc4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Mywidget(Colors.amber, "Flutter", () => null),
              Mywidget(Colors.amber, "Sarah", () => null),
              Mywidget(Colors.amber, "Malak", () => null),
              Mywidget(Colors.amber, "Mohamamd", () => null),
              Mywidget(Colors.amber, "Omar", () => null),
            ],
          );
        },
      ),
    );
  }
}

class Mywidget extends StatelessWidget {
  Mywidget(this.myWidgetColor, this.myWidgetText, this.onmyTap);
  String? myWidgetText;
  Color myWidgetColor;
  double? highetValue;
  Function() onmyTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onmyTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        color: myWidgetColor,
        width: double.infinity,
        height: highetValue,
        child: Text(myWidgetText!),
      ),
    );
  }
}
