import 'package:app_jam/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system, // Sistem temasını kullan
      darkTheme: ThemeData.dark(), // Karanlık modu tanımla
      theme: ThemeData.light(), // Aydınlık modu tanımla
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: LoginScreen(),
      //home: LoginScreen(),
    );
  }
} 

