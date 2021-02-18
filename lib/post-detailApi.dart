import 'package:code/post-card.dart';
import 'package:code/postModelApi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostDetailsApi extends StatefulWidget{
  final title  = "Post Page";
  final PostApi post;
  PostDetailsApi({Key key,this.post }) : super(key: key);

  @override
  _PostDetailsState createState() {
    return _PostDetailsState();
  }

}

class _PostDetailsState extends State<PostDetailsApi>{
  PostApi post;
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
      body:PostCard(title: post.title,body:post.body,height: 400,),
        );
  }



}