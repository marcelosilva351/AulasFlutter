import 'package:flutter/material.dart';
import 'package:tarefas/controllers/tarefa_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var controllerTarefas = TarefasController();

  @override
  void initState() {
    controllerTarefas.preencherListaTarefas();

    controllerTarefas.addListener(() {
      setState(() {
        
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarefas')),
      body: Padding(padding: EdgeInsets.all(20),
      child: 

        
        Column(
          children: [
            TextField(
              controller: controllerTarefas.controllerTituloTarefa,
            ),
                        SizedBox(height: 10,),

            ElevatedButton(onPressed: (){
              controllerTarefas..adicionarTarefa();
            }, child: Text('Adicionar tarefa')),
            SizedBox(height: 10,),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                border:Border.all(color: Colors.blue, width: 4),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5, 

                    color: Colors.black54, 
                    offset: Offset(1,2)
                  )
                ]
              ),
              child: ListView.builder(
              itemCount: controllerTarefas.tarefas.length,
              itemBuilder: (context, index){
              
              var tarefa = controllerTarefas.tarefas[index];

              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Card(
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Text(tarefa.titulo),
                          Checkbox(value: tarefa.realizada, onChanged: (context){
                            controllerTarefas.mudarTarefaRealizada(tarefa);
                         
                          })
                        ],
                      ),
                    ),
                  )
                ],
              );
              
                
              }),
            ),
          ],
        )  ),
      
    );
  }
}