import 'package:flutter/cupertino.dart';
import 'package:http_aula/models/post_model.dart';
import 'package:http_aula/repositories/post_repository.dart';

class PostController extends ChangeNotifier{

  var repository = PostRepository();
  Future<List<PostModel>>? posts;

  preencheList(){
    posts = repository.getPosts();
    notifyListeners();
  }

}