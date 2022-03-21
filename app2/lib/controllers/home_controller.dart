import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{
var controllerIdadeCao = TextEditingController();


  String resultado = '';
  
  int retornaIdadedDoCao(){
  if(controllerIdadeCao.text == ''){
      resultado = 'Você não digitou nada';
      notifyListeners();
      return 0;
    }
    try{
        var idadeCao = int.parse(controllerIdadeCao.text);
        return idadeCao;
    }catch(erro){
      resultado = 'Você não pode digitar uma letra';
      notifyListeners();
      return 0;
    }
  }

  converterIdadeCao(){
    var idadeCao = retornaIdadedDoCao();
    if(idadeCao == 0){
      return;
    }
    idadeCao = idadeCao * 7;
    resultado = "Idade do cão em humanos: $idadeCao";
    notifyListeners();
  }

}