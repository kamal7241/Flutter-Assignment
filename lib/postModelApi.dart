// To parse this JSON data, do
//
//     final postApi = postApiFromJson(jsonString);

import 'dart:convert';


// for posts
List<PostApi> postApiFromJson(String str) => List<PostApi>.from(json.decode(str).map((x) => PostApi.fromJson(x)));

// for posts
String postApiToJson(List<PostApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostApi {
    PostApi({
        this.userId,
        this.id,
        this.title,
        this.body,
    });

    int userId;
    int id;
    String title;
    String body;

// to convert map to post model
    factory PostApi.fromJson(Map<String, dynamic> json) => PostApi(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );



// for posts convert
    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
