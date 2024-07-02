import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'put_state.dart';

class PutCubit extends Cubit<PutState> {
  PutCubit() : super(PutInital());
  Future<void> putData({required String id}) async {
    try {
      emit(PutLoading());
      final parameters = {"id": id};
      var api =
          'https://65804ce16ae0629a3f54dbdb.mockapi.io/Apiendpoint/PostApi/$id';
      var response = await http.put(
        Uri.parse(api),
        body: jsonEncode(parameters),
        headers: {'Content-Type': 'application/json'},
      );
      if (response.statusCode == 200) {
        emit(PutSuccess());
      } else {
        emit(PutError(errorMessage: 'Error'));
      }
    } catch (e) {
      emit(PutError(errorMessage: 'Feild to Loade'));
    }
  }
}
