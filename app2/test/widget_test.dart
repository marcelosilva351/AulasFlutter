import 'package:app2/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  var homeController = HomeController();
  test('must return 0', (){
    homeController.controllerIdadeCao.text = 'd';
    var result = homeController.retornaIdadedDoCao();
    expect(0, result);
  });

  test('the value is 14', (){
  homeController.controllerIdadeCao.text = '2';
  homeController.converterIdadeCao();
  expect('Idade do cão em humanos: 14', homeController.resultado);
  });
}