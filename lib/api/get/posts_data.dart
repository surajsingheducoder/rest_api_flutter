import 'dart:convert'; // For working with JSON data
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> data = []; // Store the fetched data here

  // Function to fetch data from the GET API
  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')); // Replace with your API URL

    if (response.statusCode == 200) {
      // If the server returns a 200 OK response, parse the JSON data
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      // If the server did not return a 200 OK response,
      // throw an exception or handle the error as needed
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Data Fetching Example'),
        ),
        body: Center(
          child: data.isEmpty ? CircularProgressIndicator() // Show loading indicator if data is being fetched
              : ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]['title']), // Access data fields
                subtitle: Text(data[index]['body']),
              );
            },
          ),
        ),
      ),
    );
  }
}
