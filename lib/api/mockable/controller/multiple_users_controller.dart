// import 'dart:convert';
// import 'package:all_teckstack/api/mockable/model/multiple_users_model.dart';
// import 'package:all_teckstack/api/mockable/model/multiple_userslist_model.dart';
// import 'package:http/http.dart'as http;
//
// class MultipleUsersApi{
//   // final baseUrl = "https://demo1773406.mockable.io";
//   // final midPoint = "users";
//   // final endPoint = "multiple";
//
//   Future<MultipleUsersListModel> grtMultipleUsersData() async {
//     final  response = await http.get(Uri.parse("https://dummyjson.com/products"));
//
//     try{
//       if(response.statusCode==200){
//
//         final decodeResponse = jsonDecode(response.body);
//         final userModel = MultipleUsersModel.fromJson(decodeResponse);
//         return userModel;
//
//       // //
//       //   final List<Map<String, dynamic>> decodeResponse = jsonDecode(response.body);
//       //   userRes = decodeResponse.map((e) => MultipleUsersListModel.fromJson(e)).toList();
//       //
//       //   return userRes;
//         }
//       else{
//         return MultipleUsersModel();
//       }
//
//     }
//     catch(e){
//       return MultipleUsersModel();
//     }
//   }
// }