// ignore_for_file: camel_case_types, prefer_const_constructors


import 'package:flutter/material.dart';

class favouriteCard extends StatefulWidget {
  const favouriteCard({super.key});
  @override
  State<favouriteCard> createState() => _favouriteCardState();
}

class _favouriteCardState extends State<favouriteCard> {

  Color color=Colors.grey;
  
  

  @override
  Widget build(BuildContext context) {
     return Card(
    shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child:Text("görsel"),//data ile yerin görseli buraya eklenecek
          ),
          Center(child: Text("Yerin adı")),//data ile yerin adı buraya eklenecek.
          Padding(padding: EdgeInsets.only(left: 70,right:70),
          child: IconButton(color:color,onPressed: (){        
            //eğer kullanıcı beğenirse favorilerine eklenecek.       
              setState(() {
                color=color==Colors.grey ? Colors.red:Colors.grey;
                if (color==Colors.red) {
                  print("favorilere eklendi");
                 
                  
                }else{
                  print("favorilerden kaldırıldı");
                  
                }
              });
          }, icon: Icon(Icons.favorite,)),
          ),
      ],
    ),
  );
  }
}

