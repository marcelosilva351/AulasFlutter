

import 'package:flutter_test/flutter_test.dart';
import 'package:http_aula/repositories/post_repository.dart';

void main(){
  var repository = PostRepository();
  test('Deve retornar true', () async{
  var resultadoApi = await repository.getPosts();

  expect(true, resultadoApi);

  });

  test('so pra testar', () async{
    await repository.getPosts();
  });

}
