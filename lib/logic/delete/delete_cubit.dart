import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'delete_state.dart';

class DeleteCubit extends Cubit<DeleteState> {
  DeleteCubit() : super(DeleteInital());

  Future<void> deleteData({required String id}) async {
    try {
      final parameters = {"id": id};
      emit(DeleteLoading());
      var api =
          'https://65804ce16ae0629a3f54dbdb.mockapi.io/Apiendpoint/PostApi/$id';
      var response = await http.delete(Uri.parse(api),
          body: jsonEncode(parameters),
          headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        emit(DeleteSuccess());
      } else {
        emit(DeleteError(errorMessage: 'Feild 1'));
      }
    } catch (e) {
      emit(DeleteError(errorMessage: 'Feild'));
    }
  }
}
