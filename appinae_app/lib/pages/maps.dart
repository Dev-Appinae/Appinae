import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaGoogle extends StatefulWidget {
  const MapaGoogle({super.key});

  @override
  _MapaGoogleState createState() => _MapaGoogleState();
}

class _MapaGoogleState extends State<MapaGoogle> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (GoogleMapController controller) {
        mapController = controller;
      },
      initialCameraPosition: const CameraPosition(
        target: LatLng(37.7749, -122.4194), // Coordenadas de exemplo
        zoom: 14.0,
      ),
    );
  }
}