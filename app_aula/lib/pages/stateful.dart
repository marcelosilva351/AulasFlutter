import 'package:flutter/material.dart';

class Stateful extends StatefulWidget {
  const Stateful({ Key? key }) : super(key: key);

  @override
  State<Stateful> createState() => _StatefulState();
}





class _StatefulState extends State<Stateful> {
  int numero = 0;

  @override
  void initState() {
    numero = 10;
    // TODO: implement initState
    super.initState();
  }

  void incrementar(){
    numero++;
    setState(() {
    });
  }



  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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