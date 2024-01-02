import 'package:flutter/material.dart';
import 'package:projeto_perguntas/questao.dart';

void main() {
  runApp(const PerguntasApp());
}

class PerguntasApp extends StatefulWidget {
  const PerguntasApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PerguntasAppState();
  }
}

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _responderPergunta() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  final listaPerguntas = [
    'Quala sua cor favorita ?',
    'Qual o seu animal favorito ?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Perguntas',
          ),
        ),
        body: Column(
          children: [
            Questao(
              listaPerguntas.elementAt(_perguntaSelecionada),
            ),
            ElevatedButton(
              onPressed: _responderPergunta,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: _responderPergunta,
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: _responderPergunta,
              child: const Text('Resposta 3'),
            )
          ],
        ),
      ),
    );
  }
}
