
import 'package:equatable/equatable.dart';

abstract class PostSate extends Equatable{
  const PostSate();

  @override
  List<Object> get props => [];
}

class StringLoading extends PostSate {}

class StringNew extends PostSate {
  final String data;

  const StringNew({required this.data});

}
