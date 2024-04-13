import 'package:bmi/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMIApp",
      theme: ThemeData(
          primarySwatch: Colors.cyan
      ),
      home:introScreen(),
    );
  }
}
class BMIScreen extends StatefulWidget{
State<StatefulWidget> createState() {
  return BMIState();
}
}
class BMIState extends State<BMIScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.indigo.shade300,
      )

    );

  }

}