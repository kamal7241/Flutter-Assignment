import 'package:code/postModelApi.dart';
import 'package:dio/dio.dart';

class PostService {
static const String BASE_URL = "https://jsonplaceholder.typicode.com/posts";

PostService();

factory PostService.getService()=> PostService();

 Future<List<PostApi>> getPosts() async {
  Response response;
  Dio dio =  Dio();
  
  response = await dio.get(BASE_URL);
  if (response.statusCode == 200){
  print("response by kamal : ");
  // print(response.data.toString());
  // now data is map objects
  var data = response.data;
    return data.map<PostApi>((post){
     return   PostApi.fromJson(post);
    }
    ).toList();

  // or may get like that to get by query parameters
  // response =
  //     await dio.get("/test", queryParameters: {"id": 12, "name": "wendu"});
  // print(response.data.toString());
  }else{
    print("PostService: error in getting data");
  }

}

}

