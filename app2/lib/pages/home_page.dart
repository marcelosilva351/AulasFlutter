import 'package:app2/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = HomeController();
  
  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 100,),
          Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsYmt-2iyjhPT5pD0l6aPwaM3NivX5jbEJg9noUJuNX2d7jVlu1FrXFO8GZ5cAfKgaqNo&usqp=CAU', width: 150,)),
          SizedBox(height: 40,),
          Text('Digite a idade do seu cão'),
          TextField(
            controller: controller.controllerIdadeCao,
          ),
          ElevatedButton(onPressed: (){
            controller.converterIdadeCao();
          }, child: Text('Converter')),
          SizedBox(height: 15,),
          Text(controller.resultado)
        ]),),
      
    );
  }
}





