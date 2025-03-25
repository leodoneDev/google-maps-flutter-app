import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart'; // Import for LatLng

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenStreetMap Flutter Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Google Maps Example')),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(
            17.9696,
            102.6133,
          ), // Center the map over London
          initialZoom: 13.0,
        ),
        children: [
          // Changed 'layers' to 'children'
          TileLayer(
            // Use TileLayerWidget instead of TileLayerOptions directly
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
          ),
        ],
      ),
    );
  }
}
