import 'package:flutter/cupertino.dart';
import 'package:tarefas/models/tarefa_model.dart';

class TarefasController extends ChangeNotifier{
  
  var controllerTituloTarefa = TextEditingController();


  List<TarefaModel> tarefas = [];
 
  preencherListaTarefas(){
    var tarefa1 = TarefaModel('Passear com cachorro');
    var tarefa2 = TarefaModel('Academia');
    var tarefa3 = TarefaModel('Estudar fluttar');
    var tarefa4 = TarefaModel('Estudar fluttar');

    tarefas.add(tarefa1);
    tarefas.add(tarefa2);
    tarefas.add(tarefa3);
  }

  bool adicionarTarefa(){

    var tarefaAdd = TarefaModel(controllerTituloTarefa.text);

    try{

    tarefas.add(tarefaAdd);
    notifyListeners();
    return true;

    }catch(erro){

    return false;

    }
  }


  mudarTarefaRealizada(TarefaModel tarefaAdd){
    if(tarefaAdd.realizada == false){
      tarefaAdd.realizada = true;

    }else{
      tarefaAdd.realizada = false;
    }
    notifyListeners();
  }





}