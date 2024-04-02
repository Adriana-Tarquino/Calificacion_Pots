
import 'package:equatable/equatable.dart';
import 'package:examen_1/model/post_model.dart';

abstract class PostSate extends Equatable{
  const PostSate();

  @override
  List<Object> get props => [];
}

class StringLoading extends PostSate {}

class StringNew extends PostSate {
  final List<Post> data;
  
  const StringNew({required this.data});
  
}
