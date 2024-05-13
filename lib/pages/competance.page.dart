
import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
class CompetancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Competence"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Mes compétences en informatique :',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16.0),
            CompetencyItem(
              icon: Icons.code,
              title: 'Langages de programmation',
              description:
              'Maîtrise de plusieurs langages de programmation tels que Java, Python et JavaScript',
            ),
            CompetencyItem(
              icon: Icons.mobile_friendly,
              title: ' Development Mobile',
              description:
              "Expérience dans le développement d'applications mobiles à l'aide du framework Flutter.",
            ),
            CompetencyItem(
              icon: Icons.analytics_outlined,
              title: 'Science et Analyse de données',
              description: "Bénéficiant d'une solide maîtrise en analyse et en science des données",
            ),
             CompetencyItem(
              icon: Icons.storage,
              title: 'Structures de données et algorithmes',
              description: 'Excellente compréhension des structures de données et des algorithmes.',
            ),
            CompetencyItem(
              icon: Icons.storage_rounded,
              title: 'Systèmes de base de données',
              description: 'Familier avec les systèmes de bases de données tels que MySQL et NoSQL.',
            ),
          ],
        ),
      ),
    );
  }
}

class CompetencyItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  CompetencyItem({required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24.0, color: Theme.of(context).primaryColor),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
