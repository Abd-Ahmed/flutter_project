import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:moncv/menu/drawer.widget.dart';

class LocalisationPage extends StatefulWidget {
  @override
  LocalisationPageState createState() => LocalisationPageState();
}

class LocalisationPageState extends State<LocalisationPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(34.84129366323506, 10.754931282520573); // Coordonnées de l'emplacement fixe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Localisation'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 15.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('Emplacement'),
            position: _center,
            infoWindow: InfoWindow(
              title: 'Emplacement fixe',
            ),
          ),
        },
      ),
    );
  }
}