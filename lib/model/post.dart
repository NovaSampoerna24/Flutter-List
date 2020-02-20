import 'package:equatable/equatable.dart';
class Post extends Equatable{
  final int id;
  final String title;
  final String body;

  const Post({this.id,this.title,this.body});

  List<Object> get props => [id,title,body];

  String toString()=> 'Post {id :$id}';
}