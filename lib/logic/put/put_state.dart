part of 'put_cubit.dart';

abstract class PutState {}

class PutInital extends PutState {}

class PutLoading extends PutState {}

class PutLoaded extends PutState {}

class PutSuccess extends PutState {}

class PutError extends PutState {
  final String? errorMessage;
  PutError({this.errorMessage});
}
