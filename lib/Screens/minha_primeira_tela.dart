import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.purple,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.white,
                width: 50,
                height: 50,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.white,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.cyan,
                height: 50,
                width: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.black,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.purple,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.grey,
                height: 50,
                width: 50,
              )
            ],
          ),
          Container(
            color: Colors.yellow,
            height: 50,
            width: 300,
            child: const Text(
              'ola mundo',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (kDebugMode) {
                  print("voce apertou o botao");
                }
              },
              child: const Text('aperte o botao'))
        ],
      ),
    );
  }
}
