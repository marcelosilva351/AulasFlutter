import 'package:app1/modules/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  var homeController = HomeController();

  @override
  void initState() {

    homeController.addListener(() {
      setState(() {   
      });
    });
    
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: const Text('Calculo imc'), centerTitle: true,),
      body: Padding(padding: EdgeInsets.all(20), 
      child: 
      Column(
        children: [
          Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 2),
            shape: BoxShape.circle
          ),
          child: Icon(Icons.person, color: Colors.green, size: 100,)),
          const SizedBox(height: 20,),
          TextField(
          controller: homeController.controllerPeso,
          decoration: InputDecoration(label: Text('Digite seu peso')),
          ),
          const SizedBox(height: 10,),
          TextField(
          controller: homeController.controllerAltura,
          decoration: InputDecoration(label: Text('Digite sua altura')),
          ),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            homeController.calculoImc();
          }, child: Text('Calcular')),
          const SizedBox(height: 10,),
          Text(homeController.resultImc)



        
        ],
      )
      ,),
      
    );
  }
}