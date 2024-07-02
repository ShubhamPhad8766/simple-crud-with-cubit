part of 'post_cubit.dart';

abstract class PostState {}

class PostInital extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {}

class PostSuccess extends PostState {}

class PostError extends PostState {
  final String? errorMessage;
  PostError({this.errorMessage});
}
