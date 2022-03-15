import 'conta.dart';

class ControllerBanco{


  AdicionarSaldo(Conta conta, double valor){
    conta.saldo += valor;
  }

}