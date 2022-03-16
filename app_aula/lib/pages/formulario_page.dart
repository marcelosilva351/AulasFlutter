import 'package:flutter/material.dart';



class FormularioPage extends StatefulWidget {
  const FormularioPage({ Key? key }) : super(key: key);

  @override
  State<FormularioPage> createState() => _FormularioPageState();
}



class _FormularioPageState extends State<FormularioPage> {
  String nome = '';
  String resultadoDoMetodo = '';
  var controllerDoTexto = TextEditingController();


  printarNomeNaTela(){
  if(controllerDoTexto.text == ''){
    resultadoDoMetodo = 'Você não digitou nada';
    setState(() {
      
    });
    return;
  }
  nome = controllerDoTexto.text;
  resultadoDoMetodo = 'Seu nome é : $nome';
  setState(() {
    
  });



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formularios'),),
      body: Padding(padding: EdgeInsets.all(20),
      child: 
      Column(children: [
        TextField(
          onChanged: (text){
            printarNomeNaTela();
          },
          controller: controllerDoTexto,
          decoration: InputDecoration(
            label: Text('Digite seu nome')

          ),
        ),
        ElevatedButton(onPressed: (){
          printarNomeNaTela();
        }, child: Text('Printar')),
        Text(resultadoDoMetodo)

      ],),),
      
    );
  }
}