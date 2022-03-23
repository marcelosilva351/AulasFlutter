import 'package:flutter_test/flutter_test.dart';
import 'package:tarefas/controllers/tarefa_controller.dart';
import 'package:tarefas/models/tarefa_model.dart';



void main(){

  var tarefasController = TarefasController();

  test('O tamanho da lista não pode ser igual a 0', (){
    tarefasController.preencherListaTarefas();

    expect(tarefasController.tarefas.length > 0, true);

  });

  test('Adicionando tarefa na lista', (){
   var tarefaAdd = TarefaModel('tarefa teste');
   var resultado = tarefasController.adicionarTarefa(tarefaAdd);

   expect(resultado, true);

  });

  
  test('A tarefa precisa estar realizada', (){
    tarefasController.preencherListaTarefas();

    var tarefaAdd = tarefasController.tarefas[0];

    tarefasController.mudarTarefaRealizada(tarefaAdd);

    expect(tarefaAdd.realizada, true);

  });

  }



