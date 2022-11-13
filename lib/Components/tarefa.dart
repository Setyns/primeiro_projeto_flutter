import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dificuldade.dart';

class Tarefa extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Tarefa(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);

  @override
  State<Tarefa> createState() => _TarefaState();
}

class _TarefaState extends State<Tarefa> {
  int nivel = 0;
  int progresscount = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: (nivel / (widget.dificuldade * 10) > 6)
                    ? Colors.black
                    : (nivel / (widget.dificuldade * 10) > 5)
                    ? Colors.purple[400]
                    : (nivel / (widget.dificuldade * 10) > 4)
                    ? Colors.red
                    : (nivel / (widget.dificuldade * 10) > 3)
                    ? Colors.amber[800]
                    : (nivel / (widget.dificuldade * 10) > 2)
                    ? Colors.yellow[600]
                    : (nivel / (widget.dificuldade * 10) > 1)
                    ? Colors.green
                    : Colors.blue,
            borderRadius: BorderRadius.circular(6)),
            height: 140,
          ),

          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(4)),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )),
                        Dificuldade(
                          DificuldadeLevel: widget.dificuldade,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                              progresscount++;
                              progresscount == (widget.dificuldade*10+1) ? progresscount =1 : progresscount;
                            });
                            if (kDebugMode) {
                              print(nivel);
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_drop_up),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.dificuldade == 0)
                            ? 1
                            : (nivel / widget.dificuldade) / 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      'Nivel: $nivel',
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
