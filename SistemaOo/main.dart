

import 'cliente.dart';
import 'conta.dart';
import 'controllerBanco.dart';

void main(){
  var controller = ControllerBanco();


  var cliente1 = Cliente('Marcelo', '03789214108');

  var contaCliente1 = Conta('1392103', 0.0, cliente1);

  print('Saldo antes de depositar ' + contaCliente1.saldo.toString());
  controller.AdicionarSaldo(contaCliente1, 900000);

  print('Saldo depois de depositar ' + contaCliente1.saldo.toString());






}


