// import 'package:all_teckstack/api/mockable/controller/multiple_users_controller.dart';
// import 'package:flutter/material.dart';
// class GetMultipleUsersScreens extends StatefulWidget {
//   const GetMultipleUsersScreens({super.key});
//
//   @override
//   State<GetMultipleUsersScreens> createState() => _GetMultipleUsersScreensState();
// }
//
// class _GetMultipleUsersScreensState extends State<GetMultipleUsersScreens> {
//
//   var getData = MultipleUsersApi();
//
//   @override
//   Widget build(BuildContext context) {
//
//     return FutureBuilder(
//       future: getData.grtMultipleUsersData(),
//       builder: (context, snapshot) {
//         var data = snapshot.data;
//
//         return ListView.builder(
//           itemCount: data?.users?.length,
//           itemBuilder: (context, index) {
//           return Container(
//             child: Column(
//               children: [
//                 Text("${data?.users?[index].name}"),
//                 Text("${data?.users?[index].address}"),
//                 Text("${data?.users?[index].number}"),
//                 Text("${data?.users?[index].email}"),
//
//                 // Text("${data?.name}"),
//                 // Text("${data?.users?[index].address}"),
//                 // Text("${data?.users?[index].number}"),
//                 // Text("${data?.users?[index].email}"),
//               ],
//             ),
//           );
//         },);
//
//     },);
//   }
// }
