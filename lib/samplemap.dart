import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  
  var myLoc = LatLng(6.750387340887478, 125.35012557053018);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sample Map Page"),),
      body: Center(
        child: FlutterMap(
          options: MapOptions(
            initialCenter: myLoc,
            initialZoom: 10
          ),
            children: [
              TileLayer(
                urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                userAgentPackageName: "com.example.sampleflutter",
              ),
              MarkerLayer(
                  markers: [
                  Marker(
                  point: myLoc,
                  child: Icon(Icons.pin_drop, color: Colors.red,))
                  ]
              )
            ]),
      ),
    );
  }
}
