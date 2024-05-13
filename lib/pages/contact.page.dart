
import 'package:flutter/material.dart';

import '../menu/drawer.widget.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Contact"),
      ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.mail, size: 30.0),
                SizedBox(width: 10.0),
                Text(
                  'abdahmed2001@gmail.com',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.phone, size: 30.0),
                SizedBox(width: 10.0),
                Text(
                  '+216 26985994',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),    SizedBox(height: 10.0),
            Row(
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
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/icons8-facebook-48.png',
                  height: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Ahmed Abdennadher',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/instagram.png',
                  height: 30.0,
                ),
                SizedBox(width: 10.0),
                Text(
                  'Ahmed Abdennadher',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}


