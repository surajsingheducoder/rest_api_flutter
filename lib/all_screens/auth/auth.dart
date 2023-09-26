import 'package:all_teckstack/all_screens/auth/google_signin.dart';
import 'package:all_teckstack/all_screens/home_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, AsyncSnapshot<User?>snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasData){
            setUserData(snapshot.data!);
            return const HomePage();
          }
          else{
            return const AuthGoogleS();
          }
        },),
    );
  }
  Future<void> setUserData(User user)async {
    FirebaseFirestore.instance.collection("google_users").doc(user.uid).set({
      "id" : user.uid,
      "name" : user.displayName,
      "email" : user.email,
      "photo" : user.photoURL,
    });
  }
}
