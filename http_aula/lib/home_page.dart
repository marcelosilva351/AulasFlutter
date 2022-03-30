import 'package:flutter/material.dart';
import 'package:http_aula/controllers/post_controller.dart';
import 'package:http_aula/models/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  var controller = PostController();
    @override
  void initState() {

    controller.preencheList();

    controller.addListener(() {
      setState(() {
        
      });
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts'),),
      body: Padding(padding: EdgeInsets.all(32),
      child: FutureBuilder<List<PostModel>>(
        future: controller.posts,
        builder: (context, snapchot){

        if(!snapchot.hasData){
          return Center(child: CircularProgressIndicator(),);
        }
        if(snapchot.hasError){
          return Center(child: Text('Ocorreu um erro ao buscar os dados'),);
        }
       //future com data e sem erro
        return ListView.builder(
          itemCount: snapchot.data!.length,
          itemBuilder: (context, index){
            var post = snapchot.data![index];

            return Card(
              color: Colors.blue,
              child: ListTile(
                title: Text(post.title, style: TextStyle(color: Colors.white),),
                subtitle: Text(post.body),
              
              ),
            );

          }); 





        },
      )
      
      ),
    );
  }
}