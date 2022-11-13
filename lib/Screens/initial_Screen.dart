import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/Components/tarefa.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 700),
        child: ListView(
          children: const [
            Tarefa(
                'aprender flutter',
                'assets/imagens/dash.png',
                5),
            Tarefa(
                'ir pra academia',
                  'assets/imagens/images.jpg',
                2),
            Tarefa(
                'ir para faculdade',
                'assets/imagens/faculdade-inverno.jpg',
                1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
