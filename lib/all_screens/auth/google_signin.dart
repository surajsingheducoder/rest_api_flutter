import 'package:all_teckstack/all_screens/services/auth_service.dart';
import 'package:flutter/material.dart';
class AuthGoogleS extends StatefulWidget {
  const AuthGoogleS({super.key});

  @override
  State<AuthGoogleS> createState() => _AuthGoogleSState();
}

class _AuthGoogleSState extends State<AuthGoogleS> {
  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google SignIn"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: authService.hangleSignIn, child: const Text("SignIn with Google")),
      ),
    );
  }
}
