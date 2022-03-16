import 'package:app_aula/pages/desing.dart';
import 'package:app_aula/pages/formulario_page.dart';
import 'package:app_aula/pages/stateful.dart';
import 'package:app_aula/pages/stateless.dart';
import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App aula'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                return Stateless();
            }));
            }, child: Text("StatelessWidget")),


            ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return Stateful();
            }));
            }, child: Text("StafulWidget")),
            ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
              return DesingPage();
            }));
            }, child: Text("Design")),
            ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context){
              return FormularioPage();
            }));
            }, child: Text("TextFild e formularios")),
          ],
        ),
      ),
      
    );
  }
}