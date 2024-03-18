// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
import 'package:app_jam/buttons/navigation_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  ThemeMode _themeMode = ThemeMode.system;

  // Tema modunu değiştiren fonksiyon
  void _changeThemeMode(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Ayarlar"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Tema modunu değiştir
                if (_themeMode == ThemeMode.dark) {
                  _changeThemeMode(ThemeMode.light); // Karanlık mod ise aydınlık moda geç
                } else {
                  _changeThemeMode(ThemeMode.dark); // Aydınlık mod ise karanlık moda geç
                }
              },
              child: Center(
                child: Text(
                  _themeMode == ThemeMode.dark ? 'Aydınlık Mod' : 'Karanlık Mod',
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Navigation(page: 3),
      ),
    );
  }
}
