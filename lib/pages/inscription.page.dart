
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class InscriptionPage extends StatelessWidget {
  late SharedPreferences prefs;
  TextEditingController txt_login = new TextEditingController();
  TextEditingController txt_password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar (title : Text (' Page Inscription')),
    body:
    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image:NetworkImage("https://www.famu.edu/administration/campus-services/information-technology-services/mfa/img/MFA.jpg"),
    fit: BoxFit.cover,
    ),),
    child:Column (
    children: [
    Container (
    padding: EdgeInsets.all(10),
    child: TextFormField(
    controller: txt_login,
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.person),
    hintText: "Utilisateur",
    border: OutlineInputBorder(
    borderSide: BorderSide(width: 1),
    borderRadius: BorderRadius.circular(10))),
    ),
    ),
    Container (
    padding: EdgeInsets.all(10),
    child: TextFormField(
    obscureText: true,
    controller: txt_password,
    decoration: InputDecoration(
    prefixIcon: Icon (Icons.password),
    hintText: "Mot de passe",
    border: OutlineInputBorder(
    borderSide: BorderSide(width: 1),
    borderRadius: BorderRadius.circular(10))),
    ),
    ),
    Container(
    padding: EdgeInsets.all(10),
      child: ElevatedButton (

    style: ElevatedButton.styleFrom(
    minimumSize: const Size.fromHeight (50)),

    onPressed: () {_onInscrire(context);},
    child: Text ("Inscription",

    style: TextStyle(fontSize: 22))),)
   , TextButton (
    child: Text("J'ai déja un compte",
    style: TextStyle(fontSize: 22)),
    onPressed: () {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/authentification');
    }),


    ],)));}
  Future<void> _onInscrire(BuildContext context) async {
    prefs = await SharedPreferences.getInstance();
    if (!txt_login.text.isEmpty && !txt_password.text.isEmpty) {
      prefs.setString("login", txt_login.text);
      prefs.setString("password", txt_password.text);
      prefs.setBool("connecte", true);
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    }
    else{
      const snackBar =SnackBar(
          content: Text('Id ou mot de passe vides'),);
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }






      }







