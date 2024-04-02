

import 'package:dio/dio.dart';
import 'package:examen_1/model/post_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<List<Post>> {
  final Dio dio = Dio();

  PostCubit() : super([]);

  Future<void> fetchPosts() async {
    try {
      Response response = await dio.get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        emit((response.data as List).map((postJson) => Post.fromJson(postJson)).toList());
      } else {
        print('Failed to load posts');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
