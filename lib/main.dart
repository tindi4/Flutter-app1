import 'package:flutter/material.dart';

import 'package:flutter_app/pages/actus.dart';
import 'package:flutter_app/pages/appel.dart';
import 'package:flutter_app/pages/discussions.dart';
import 'package:flutter_app/pages/communaute.dart';

void main(){
  runApp(MaterialApp(
    theme : ThemeData(
      colorSchemeSeed : Colors.yellow,
      scaffoldBackgroundColor : Colors.green,

    ),
    home: HomePage(),
    debugShowCheckedModeBanner : false,
  ));
}

class HomePage extends StatefulWidget {
   HomePage({super.key});

   @override
   State<HomePage> createState(){
      return HomePageState();
   }
}

class HomePageState extends State<HomePage> {
  
  final List pages = [
    DiscussionsPage(),
    ActusPage(),
    CommunautePage(),
    AppelPage(),
  ];

  final List images = [
    "https://cdn.pixabay.com/photo/2025/07/10/11/33/sat-9706519_1280.jpg",
    "https://www.shutterstock.com/image-vector/cute-cartoon-vector-happy-boy-260nw-2727669023.jpg",
  ];

  int pageIndex = 0;
  int counter = 0;
   
  @override 
  Widget build(BuildContext context){
    return Scaffold(

      appBar : AppBar( 
         
         centerTitle: true,
         title : const Text("My special app"),
         elevation : 24,
         actions : [
          IconButton(
            onPressed:() {},
            icon: Icon(Icons.search)
          ),
          IconButton(
            onPressed:() {},
            icon: Icon(Icons.more_vert)
          ),
         ]
      ),

      drawer : Drawer(
        child : ListView(
          children : [
            DrawerHeader(
              decoration : BoxDecoration(
                color : Colors.blue
              ),
              child : Text("Menu")
            ),
            ListTile(
              leading : Icon(Icons.settings),
              title : Text("Paramètres"),
              onTap : (){}
            ),
            ListTile(
              leading : Icon(Icons.account_box),
              title : Text("Profil"),
              onTap : (){}
            ),
            ListTile(
              leading : Icon(Icons.help),
              title : Text("Helps"),
              onTap : (){}
            ),
            ListTile(
              leading : Icon(Icons.mail),
              title : Text("Contact"),
              onTap : (){}
            ),
            ListTile(
              leading : Icon(Icons.close),
              title : Text("Quitter"),
              onTap : (){}
            ),
          
          ],
        ),
      ),
      body : pages [pageIndex],

      floatingActionButton : FloatingActionButton(
        child : Icon(Icons.add),
        onPressed : (){
          setState(() {
            counter += 1; 
          });
        },
        
      ),

      bottomNavigationBar : NavigationBar(
        selectedIndex : pageIndex,
        onDestinationSelected : (int index) {
          setState(() {
          pageIndex = index;

          });
        },
        destinations : [
          NavigationDestination(
            icon : Icon(Icons.message),
            label : "Discussions",
          ),
           NavigationDestination(
            icon : Icon(Icons.filter_tilt_shift),
            label : "Actus",
          ),
           NavigationDestination(
            icon : Icon(Icons.group),
            label : "Communauté",
          ),
           NavigationDestination(
            icon : Icon(Icons.phone),
            label : "Appels",
          ),

        ]
      )
    );
  }
}