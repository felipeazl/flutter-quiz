import 'package:flutter/material.dart';
import 'package:projeto_quiz/components/resposta.dart';
import 'components/question.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      "Qual é a sua cor favorita?",
      "Qual o seu esporte favorito?",
      "Qual o seu animal favorito?",
      "Quantos anos você tem?",
    ];
    final respostas = [
      "Resposta 1",
      "Resposta 2",
      "Resposta 3",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas App"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Resposta(respostas[0], _responder),
            Resposta(respostas[1], _responder),
            Resposta(respostas[2], _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
