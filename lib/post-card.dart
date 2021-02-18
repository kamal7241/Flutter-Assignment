import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String title;
  String img;
  double height;
  String body;
  PostCard({this.title, this.body, this.img="https://picsum.photos/536/354", this.height = 300});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Colors.grey[100],
        margin: EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                this.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: this.height,
              padding: EdgeInsets.all(5.0),
              child: ListView(
                children: [
                  Image.network(
                    img,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                  Text(body),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 30,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Like",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      size: 30,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "comment",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
