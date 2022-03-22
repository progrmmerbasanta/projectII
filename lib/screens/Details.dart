import 'package:flutter/material.dart';
class Details extends StatefulWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context){
      return Scaffold(
      backgroundColor:Colors.blueGrey[800],
      body:SafeArea(
        child:Column(
          children: const <Widget>[
        CircleAvatar(
           radius:50,
           backgroundImage: AssetImage('images/basanta.jpg'),
         ),
         Text(
           "Basanta Karki",
           style: TextStyle(
             fontSize:40.0,
             color: Colors.white,
             fontWeight:FontWeight.bold,
           ),
         )
          ],
        ),
      ));
  }
}
    