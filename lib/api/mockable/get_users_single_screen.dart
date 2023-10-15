import 'package:all_teckstack/api/mockable/controller/get_users_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetUsersSingle extends StatefulWidget {
  const GetUsersSingle({super.key});

  @override
  State<GetUsersSingle> createState() => _GetUsersSingleState();
}

class _GetUsersSingleState extends State<GetUsersSingle> {
  var usersClass = UsersSingleApi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetUsers Single"),
      ),
      body: FutureBuilder(
          future: usersClass.getUsersSingle(),
          builder: (context, snapshot) {
            var data = snapshot.data;
            return ListView(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Image.network("${data?.imageUrl}"),
                ),
                Text("${data?.id}"),
                Text("${data?.name}"),
                Text("${data?.email}"),
                Text("${data?.number}"),
                Text("${data?.address}"),
              ],
            );
          },)
    );
  }
}
