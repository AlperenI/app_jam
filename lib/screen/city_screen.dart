// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, prefer_const_literals_to_create_immutables, camel_case_types, unused_element

import 'package:flutter/material.dart';
import "package:app_jam/buttons/favourite_card.dart";

class Cityscreen extends StatelessWidget {
  final String cityname; 
  const Cityscreen( {super.key, required this.cityname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$cityname"),),//seçilen şehrin ismi
      body: GridView.count(crossAxisCount:2,padding:EdgeInsets.all(15),
      children: [
        favouriteCard(),  
      ],)
    );
  }
}


  
  
  

