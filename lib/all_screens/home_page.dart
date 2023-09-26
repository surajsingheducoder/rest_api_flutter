import 'package:all_teckstack/all_screens/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: authService.handleSignOut,
              icon: const Icon(Icons.logout))],
        title: const Text("Home Page"),
      ),
      body: Center(
        child: SizedBox(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("${FirebaseAuth.instance.currentUser!.photoURL}"),
                ),
                title: Text("${FirebaseAuth.instance.currentUser!.displayName}",),
                subtitle:Text("${FirebaseAuth.instance.currentUser!.email}"), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
