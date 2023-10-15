import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api/mockable/get_multiple_users_screens.dart';
import 'api/mockable/get_users_single_screen.dart';
import 'api/product api/view/view_data.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  ViewProducts(),
      ),
    );
  }
}
