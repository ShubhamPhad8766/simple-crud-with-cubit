import 'dart:convert';

import 'package:crud/model/get_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

part 'get_state.dart';

class GetCubit extends Cubit<GetState> {
  GetCubit() : super(GetInitial());
  Future<void> getData() async {
    try {
      emit(GetLoading());
      String api =
          'https://mbcut2mq36.execute-api.ap-south-1.amazonaws.com/commerce/leads/group/1703228300417?page=1&pageSize=20%22';
      var response = await http.get(Uri.parse(api));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var model = GetModel.fromJson(data);
        emit(GetLoaded(getModel: model));
      } else {
        emit(GetError(errorMessage: 'Error'));
      }
    } catch (e) {
      emit(GetError(errorMessage: 'Feild To Loade'));
    }
  }
}
