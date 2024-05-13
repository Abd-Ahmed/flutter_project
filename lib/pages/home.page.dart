

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/global.params.dart';
import '../menu/drawer.widget.dart';

class HomePage extends StatelessWidget {
  @override
  late SharedPreferences prefs;

  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(title: Text('Page Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/profil.jpg'),
              radius: 150.0,
            ),
            SizedBox(height: 20.0),
            Text(
              "Je suis actuellement en deuxiéme année en génie informatique, avec une Licence en Analyse de Données et Big Data.",
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _Deconnexion(context) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setBool("connecte", false);
    Navigator.of(context).pushNamedAndRemoveUntil('/authentification',
            (Route<dynamic> route) => false);
  }

}






