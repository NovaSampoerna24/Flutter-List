import 'package:equatable/equatable.dart';
import 'package:flutter_list/model/post.dart';

abstract class PostState extends Equatable{
  const PostState();

  List<Object> get props=> [];
}

class PostUnitInitialized extends PostState{}

class PostError extends PostState{}

class PostLoaded extends PostState{
  final List<Post> posts;
  final bool hasReachedMax;

  const PostLoaded({
    this.posts,
    this.hasReachedMax
  });

  PostLoaded copyWith({
    List<Post> posts,
    bool hasReachedMax
  }){
    return PostLoaded(hasReachedMax: hasReachedMax ?? this.hasReachedMax,posts: posts?? this.posts);
  }

  List<Object> get props => [posts,hasReachedMax];

  String toString()=>'PostLoaded { posts:${posts.length},hasReachedMax:$hasReachedMax }';


}