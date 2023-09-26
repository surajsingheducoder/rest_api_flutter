import 'package:flutter/material.dart';

import 'all_screens/auth/google_signin.dart';
import 'api/get/meta_data.dart';
import 'api/get/posts_data.dart';

class AllButton extends StatefulWidget {
  const AllButton({super.key});

  @override
  State<AllButton> createState() => _AllButtonState();
}

class _AllButtonState extends State<AllButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthGoogleS(),));
                }, child: const Text("Google SignIn")),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp(),));
                }, child: const Text("Get 1")),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const GetUData(),));
                }, child: const Text("Get 2")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
