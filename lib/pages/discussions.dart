import 'package:flutter/material.dart';

class DiscussionsPage extends StatelessWidget {
  @override 

  Widget build( BuildContext context) {
    return Scaffold (
      body : Center(
        child : ElevatedButton(
          onPressed : (){
            Navigator.pop(context);
          },
          child : Text(" Bienvenu sur la page de discussions : Cliquez pour retourner au Menu")
        )
      )
    );
  }
}