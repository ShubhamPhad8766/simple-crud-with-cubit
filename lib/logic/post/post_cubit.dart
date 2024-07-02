import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInital());
  Future<void> postData(
      {required String phoneNumber, required int groupId}) async {
    try {
      final parameters = {"phoneNumber": phoneNumber, "groupId": groupId};
      emit(PostLoading());
      var api =
          'https://gxppcdmn7h.execute-api.ap-south-1.amazonaws.com/authgw/sendotp';
      var response = await http.post(Uri.parse(api),
          body: jsonEncode(parameters),
          headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        emit(PostSuccess());
      } else {
        emit(PostError(errorMessage: 'Error'));
      }
    } catch (e) {
      emit(PostError(errorMessage: 'Feild to Load'));
    }
  }
}
