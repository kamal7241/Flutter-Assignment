import 'package:code/post-card.dart';
import 'package:code/postModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget{
  final title  = "Post Page";
  final Post post;
  PostDetails({Key key,this.post }) : super(key: key);

  @override
  _PostDetailsState createState() {
    return _PostDetailsState();
  }

}

class _PostDetailsState extends State<PostDetails>{
  Post post;
 @override
  void initState() {
    super.initState();
    post = widget.post;
  }
  

  @override
  Widget build(BuildContext context) {

        return Scaffold(
              appBar: AppBar(
        title: Text(widget.title),
      ),
      body:PostCard(title: post.title,img: post.img,height: 400,),
        );
  }



}