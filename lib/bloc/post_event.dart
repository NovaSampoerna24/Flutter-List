import 'package:equatable/equatable.dart';

abstract class PostEvent extends Equatable{
  List<Object> get props => [];
}

class Fetch extends PostEvent{}