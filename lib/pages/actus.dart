import 'package:flutter/material.dart';

class ActusPage extends StatelessWidget {
  @override 

  Widget build( BuildContext context) {
    return Container(  
        width: double.infinity,                 // la taille du container au même titre que child
        padding: EdgeInsets.all(16),
        child: Column(  
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,                 
        children: [                     // children : plusieurs widgets
          Text('ElevatedButton'),
          Text('Sous-titre'),
          ElevatedButton(
            onPressed: () {},
            child: Text('OK vous avez appuyé sur ce bouton flottant'), // child : un seul widget
          ),
        ],
      ),
);
  }
}