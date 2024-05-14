import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';
import 'package:url_launcher/url_launcher.dart';
import "package:moncv/pages/localisation.page.dart";
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.0),
            Text(
              'Contacts',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(height: 20.0),
            buildContactRow(
              icon: Icons.mail,
              text: 'abdahmed2001@gmail.com',
              onTap: () => launch('mailto:abdahmed2001@gmail.com'),
            ),
            SizedBox(height: 10.0),
            buildContactRow(
              icon: Icons.phone,
              text: '+216 26985994',
              onTap: () => launch('tel:+21626985994'),

            ),
           SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocalisationPage()),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on, size: 30.0),
                  SizedBox(width: 10.0),
                  Text(
                    'Gremda km6, sfax',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            buildContactRow(
              image: Image.asset(
                'images/linkedin.png',
                height: 30.0,
              ),
              text: 'ahmed-abdennadher01',
              onTap: () => launch('https://www.linkedin.com/in/ahmed-abdennadher01'),
            ),
            SizedBox(height: 10.0),
            buildContactRow(
              image: Image.asset(
                'images/github.png',
                height: 30.0,
              ),
              text: 'Abd-Ahmed',
              onTap: () => launch('https://github.com/Abd-Ahmed'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContactRow({
    IconData? icon,
    Widget? image,
    required String text,
    Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 30.0),
            SizedBox(width: 10.0),
          ],
          if (image != null) ...[
            image,
            SizedBox(width: 10.0),
          ],
          Text(
            text,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
  ));
}