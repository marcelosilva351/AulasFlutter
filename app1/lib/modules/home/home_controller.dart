
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier{
  var controllerPeso = TextEditingController();
  var controllerAltura = TextEditingController();
  String resultImc = '';

 bool validarControllers(){
 if(controllerPeso.text == '' || controllerAltura.text == ''){
      resultImc = 'Digite todos os campos';
      notifyListeners();
      return false;
    }
    return true;
  }

  double converterPeso(){
    return double.parse(controllerPeso.text);
  }

  double converterAltura(){
    return double.parse(controllerAltura.text);
  }

  calculoImc(){
    if(validarControllers()){
        double peso = converterPeso();
        double altura = converterAltura();
        double imc = peso / (altura * altura);
        if(imc < 18.5){
          resultImc = 'Peso baixo';
          notifyListeners();
        }else if(imc >= 18.5){
          resultImc = 'Peso normal';
          notifyListeners();
        }
    }
  
  
}
}