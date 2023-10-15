import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

import 'model.dart';

class HotelScreen extends StatefulWidget {
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {

  List<GetModels> PostList = [];

  Future<List<GetModels>> getpostsapi() async {
    final response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      for (Map<String, dynamic> i in data) {
        PostList.add(GetModels.fromJson(i));
      }
      return PostList;
    } else {
      // Handle the error or return an empty list, depending on your requirements
      throw Exception('Failed to load posts');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Course"),
      ),
      body: Column(
        children: [
          Expanded(child:
          FutureBuilder(
              future: getpostsapi(),
              builder: (context,snapshot){
                if(!snapshot.hasData){
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(child: CircularProgressIndicator()),
                    ],
                  );
                }else{
                  return ListView.builder(
                      itemCount: PostList.length,
                      itemBuilder: (context, index){
                        return Card(
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("Id No:-" +PostList[index].id.toString()),

                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,top: 10),
                                child: Text("Title \n"+PostList[index].title.toString()),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text("Body \n" + PostList[index].body.toString()),
                              )
                            ],
                          ),
                        );
                      });
                }

              }
          ),
          )
        ],
      ),
    );
  }
}