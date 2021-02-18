import 'package:code/post-card.dart';
import 'package:code/post-details.dart';
import 'package:code/postModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget{
  final title  = "Post Page";
  PostsPage({Key key, }) : super(key: key);

  @override
  _PostsState createState() {
    return _PostsState();
  }

}

class _PostsState extends State<PostsPage>{
  Post post1;
  Post post2;
  Post post3;
  List<Post> myList ;
 @override
  void initState() {
    super.initState();
    post1 = Post("Post1","https://picsum.photos/536/354");
    post2 = Post("Post2","https://picsum.photos/200");
    post3 = Post("Post3","https://picsum.photos/seed/picsum/200/300");
     myList = [post1,post2,post3,post2];
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
              child:PostCard(title:myList[index].title,img: myList[index].img,) ,
              onTap: (){
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostDetails(post: myList[index],),
                        )
                        );

              } ,
              )
            
            ),
       ),
        );
  }



}