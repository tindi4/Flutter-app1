import 'package:flutter/material.dart';

class CommunautePage extends StatelessWidget {
  @override 

  Widget build( BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("Page Communauté")
      ),
      body : ListView(
        padding : EdgeInsets.all(10),
        children : [
          TextField (
            decoration : InputDecoration(
              hintText : "Entrez votre E-mail",
              labelText: "E-mail",
              prefixIcon : Icon(Icons.email),
              border : OutlineInputBorder(),
              filled : true,
              fillColor : Colors.white,

            ),
          )
        ]
      ),
    );
    
  }
}