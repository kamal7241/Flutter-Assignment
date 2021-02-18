import 'package:code/post-card.dart';
import 'package:code/post-detailApi.dart';
import 'package:code/postModelApi.dart';
import 'package:code/postService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostsApiPage extends StatefulWidget{
  final title  = "Posts Page Api";
  PostsApiPage({Key key, }) : super(key: key);

  @override
  _PostsState createState() {
    return _PostsState();
  }

}

class _PostsState extends State<PostsApiPage>{
  List<PostApi> myList = new List();
 @override
  void initState() {
    super.initState();
     PostService.getService().getPosts()
     .then((res) => {
       myList=res,
       print("myList by kamal"),
       print(myList),
       setState(() { })
      //  print(myList.toString())
       } ) 
     .catchError((err)=>print(err));
  }

  @override
  Widget build(BuildContext context) {

        return Scaffold(
              appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context,index)=>Container(
            child: GestureDetector(
              child:PostCard(title:myList[index].title,body: myList[index].body,) ,
              onTap: (){
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostDetailsApi(post: myList[index],),
                        )
                        );

              } ,
              )
            
            ),
       ),
        );
  }



}