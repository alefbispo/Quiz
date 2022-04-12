import 'dart:ffi';

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
  List<int> pergunta = [0, 1, 2, 3];

  int perguntaEscolhida = 0;
  int placar = 0;
  String mostrarPlacar = 'Placar: ';
  String fechar = 'Finalizar: ';

  void _perguntasErespostas() {
    setState(
      () {
        if (perguntaEscolhida < pergunta.length - 1) {
          perguntaEscolhida++;
          condicional();
        }
      },
    );
  }

  condicional() {
    switch (perguntaEscolhida) {
      case 0:
        pergunta = [0, 1, 2, 3];

        break;
      case 1:
        pergunta = [4, 5, 6, 7];
        break;
      case 2:
        pergunta = [8, 9, 10, 11];
        break;
      case 3:
        pergunta = [12, 13, 14, 15];
        break;
    }
  }

  void _voltar() {
    setState(() {
      if (perguntaEscolhida <= pergunta.length) {
        if (perguntaEscolhida > 0) {
          perguntaEscolhida--;
          condicional();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Quiz do mozão'),
          ),
        ),
        body: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    respostas[perguntaEscolhida],
                    style: TextStyle(fontSize: 19),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (respostas[2] == respostas[perguntaEscolhida]) {
                        ++placar;
                      }
                      _perguntasErespostas();
                    },
                    child: Text(perguntas[pergunta[0]]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _perguntasErespostas();
                    },
                    child: Text(perguntas[pergunta[1]]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (respostas[0] == respostas[perguntaEscolhida]) {
                        ++placar;
                      }
                      if (respostas[1] == respostas[perguntaEscolhida]) {
                        ++placar;
                      }
                      _perguntasErespostas();
                    },
                    child: Text(perguntas[pergunta[2]]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (respostas[3] == respostas[perguntaEscolhida]) {
                        ++placar;
                      }
                      _perguntasErespostas();
                    },
                    child: Text(perguntas[pergunta[3]]),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _voltar();
                    },
                    child: Text('Voltar'),
                  ),
                  Text('Placar ${placar}',
                      style: TextStyle(fontSize: 30))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
