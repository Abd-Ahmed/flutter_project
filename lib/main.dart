import "package:flutter/material.dart";
import "package:shared_preferences/shared_preferences.dart";
import "package:moncv/pages/contact.page.dart";
import "package:moncv/pages/competance.page.dart";
import "package:moncv/pages/home.page.dart";
import "package:moncv/pages/inscription.page.dart";
import 'package:moncv/pages/authentification.page.dart';
import "package:moncv/pages/formation.dart";
import "package:moncv/pages/experience.page.dart";
import "package:moncv/pages/localisation.page.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _lightTheme = ThemeData(primarySwatch: Colors.blue);
  ThemeData _darkTheme = ThemeData.dark();

  bool _isDarkModeEnabled = false;

  final routes = {
    '/home': (context) => HomePage(),
    '/inscription': (context) => InscriptionPage(),
    '/authentification': (context) => AuthentificationPage(),
    '/contact': (context) => ContactPage(),
    '/competance': (context) => CompetancePage(),
    '/experience': (context) => ExperiencePage(),
    '/formation': (context) => FormationPage(),
    '/localisation': (context) => LocalisationPage(),
  };

  @override
  void initState() {
    super.initState();
    _loadTheme();
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkModeEnabled = prefs.getBool('darkMode') ?? false;
    });
  }

  void _toggleDarkMode(bool darkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkModeEnabled = darkMode;
      prefs.setBool('darkMode', darkMode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _lightTheme,
      darkTheme: _darkTheme,
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder:
            (BuildContext context, AsyncSnapshot<SharedPreferences> prefs) {
          var x = prefs.data;
          if (prefs.hasData) {
            bool conn = x?.getBool('connecte') ?? false;
            if (conn) return HomePage();
          }
          return AuthentificationPage();
        },
      ),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
      themeMode: ThemeMode.system, // Set to ThemeMode.system
    );
  }
}
