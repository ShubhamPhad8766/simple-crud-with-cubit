part of 'delete_cubit.dart';

abstract class DeleteState {}

class DeleteInital extends DeleteState {}

class DeleteLoading extends DeleteState {}

class DeleteLoaded extends DeleteState {}

class DeleteSuccess extends DeleteState {}

class DeleteError extends DeleteState {
  final String? errorMessage;
  DeleteError({this.errorMessage});
}
