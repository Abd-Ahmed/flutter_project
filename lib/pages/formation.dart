


import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class FormationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Formation'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Diplome du cycle ingenieur'),
            subtitle: Text('IIT - Institut International de Technologie Sfax Tunisie'),
            trailing: Text('2023 - présent'),
          ),ListTile(
            title: Text('Diplome M1 master de recherche en data science'),
            subtitle: Text("ISIMS - Institut Superieur d'informatique et multimedia Sfax Tunisie"),
            trailing: Text('2022 - 2023'),
          ),
          ListTile(
            title: Text('Diplome en licence analyse de données et big data'),
            subtitle: Text('ISIMS'),
            trailing: Text('2019 - 2022'),
          ),
          
          ListTile(
            title: Text('Diplome baccaloriat Mathématique'),
            subtitle: Text('Lycee Habib Thameur'),
            trailing: Text('2015 - 2019'),
          ),
        ],
      ),
    );
  }}
