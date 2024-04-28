import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:podcast_app/pages/foryou.dart';
import 'package:podcast_app/pages/splashscreen.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBaFcEyiNvWjY_hSZfVUm1r2HZJ7YtKSOw",
          appId: "1:801187604046:android:fc9e0c93838d908039c51f",
          messagingSenderId: "801187604046",
          projectId: "major-project-64be2"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
