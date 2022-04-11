import 'package:flutter/material.dart';
import 'package:quiz_flutter/model/perguntas.dart';
import 'package:quiz_flutter/model/respostas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  _MyApp createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz do mozão'),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(perguntas[0]),
              ElevatedButton(
                onPressed: () {},
                child: Text('ap1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(respostas[0]),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('ap1'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('ap1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
