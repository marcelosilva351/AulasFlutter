import 'dart:ffi';

import 'package:http/http.dart' as http;
import 'package:http_aula/models/post_model.dart';
import 'dart:convert';
class PostRepository{
  
  var urlPosts = Uri.parse('https://jsonplaceholddssdser.typicode.com/posts');

 Future<List<PostModel>> getPosts() async{
   List<PostModel> postsReturn = [];
  
  
   var response = await http.get(urlPosts);
   if(response.statusCode == 200){

    var responseMap = jsonDecode(response.body);

    for(var post in responseMap){

      var postAdd = PostModel(post['id'], post['title'], post['body']);

      postsReturn.add(postAdd);

    }
    return postsReturn;

   }
   throw Exception();
 }




}