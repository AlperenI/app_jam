// ignore_for_file: prefer_const_constructors
import 'package:app_jam/buttons/favourite_card.dart';
import 'package:app_jam/buttons/navigation_bar.dart';
import'package:flutter/material.dart';
class favouriteScreen extends StatelessWidget {
  const favouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Favorilerim"),),
      body:SafeArea(
        child:GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
          ),
          itemCount: 8, 
          itemBuilder:(context,index){
            return favouriteCard();
          } 
        
        ),
      ),
      bottomNavigationBar: Navigation(page: 2),
    );
  }
}