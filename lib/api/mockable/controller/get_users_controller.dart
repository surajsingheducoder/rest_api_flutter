import 'dart:convert';

import 'package:all_teckstack/api/mockable/model/users_single_model.dart';
import 'package:http/http.dart' as http;
class UsersSingleApi{

  final baseUrl = 'https://demo1773406.mockable.io';
  final midPointUrl = 'users';
  final endPointUrl = 'single';

  // UsersSingle? usersModelData;

  Future<UsersSingle> getUsersSingle() async {
    final response = await http.get(Uri.parse("$baseUrl/$midPointUrl/$endPointUrl"));

    try{
      if(response.statusCode==200){
        var decodeResponseData = jsonDecode(response.body); //decode here
        var usersModel = UsersSingle.fromJson(decodeResponseData); // json to convert in model
        return usersModel;
      }
      else{
        return UsersSingle();
      }
    }
    catch(e){
      return UsersSingle();
    }

  }

}