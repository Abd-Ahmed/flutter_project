import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>>menus=[
    {"title":"Accueil","icon":Icon(Icons.home, color:Colors.black,), "route": "/home"}
,

{"title": "formation", "icon":Icon(Icons.book, color:Colors.black,),
"route": "/formation"},


{"title": "Competance", "icon": Icon (Icons.photo,color:Colors.black,),
"route": "/competance"},


{ "title": "Contact", "icon": Icon (Icons. contact_page,color:Colors.black,),
"route": "/contact"},

{ "title": "Experience", "icon": Icon (Icons. settings, color:Colors.black, ),
"route": "/experience"},
    {"title": "Localisation", "icon": Icon (Icons.gps_fixed,color:Colors.black,),
      "route": "/localisation"},

{ "title": "Déconnexion", "icon": Icon (Icons. logout,color:Colors.black,),
"route": "/authentification"},

];




  }