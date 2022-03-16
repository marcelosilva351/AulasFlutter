import 'package:flutter/material.dart';




class DesingPage extends StatefulWidget {
  const DesingPage({ Key? key }) : super(key: key);

  @override
  State<DesingPage> createState() => _DesingPageState();
}

class _DesingPageState extends State<DesingPage> {
  Color corDoContainer = Colors.black;
  int numero = 0;

  void incrementar(){
    numero++;
    if(numero % 2 == 0){
      corDoContainer = Colors.red;
    }else{
      corDoContainer =  Colors.black;
    }

    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Desing')),
      body: Center(
        child: Column(
          children: [
            const Text('Column'),
            const SizedBox(height: 10,),

            Container(
              width: 100, 
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
              Container(
              width: 100,
              height: 100,
              color: corDoContainer,
            ),
            const SizedBox(height: 10,),
            Text(numero.toString()),
            ElevatedButton(onPressed: (){
              incrementar();
            }, child: const Text('Incrementar')),
              ],
            ),
            const SizedBox(height: 40,),
            Text('Container'),
            Container(
              width: 200,
              height: 200,
            
              decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
              boxShadow:const [
                 BoxShadow(
                  blurRadius: 5,
                  color: Colors.black54,
                  offset: Offset(1,2)

                                  )
              ]

              ),
            ),

            SizedBox(height: 40,),
            Card(
              color: Colors.blue,
              elevation: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('oi'),
                    Text('oi'),

                  ],
                ),
              )
            )


          ],
        ),
      ),
      
    );
  }
}