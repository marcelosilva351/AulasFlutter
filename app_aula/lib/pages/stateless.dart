import 'package:flutter/material.dart';

class Stateless extends StatelessWidget {
  int numero = 0;


  void incrementar(){
    numero++;
    print(numero);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(numero.toString()),
            ElevatedButton(onPressed: (){
              incrementar();
            }, child: Text('Incrementar'))
          ],
        ),
      ),
      
    );
  }
}