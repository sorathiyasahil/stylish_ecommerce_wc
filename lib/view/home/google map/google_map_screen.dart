import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocode/geocode.dart';
import '../../../core/theme/app_colors.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({super.key});

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  Completer<GoogleMapController> _completer = Completer();
  List<Marker> _marker = [];
  LatLng? _selectedLocation;
  String? _address;
  GeoCode geoCode = GeoCode();

  final List<Marker> _list = [
    Marker(
      markerId: MarkerId("1"),
      position: LatLng(23.0457344, 72.5450752),
      icon: BitmapDescriptor.defaultMarkerWithHue(240),
      infoWindow: InfoWindow(title: "Current Location"),
    ),
  ];

  Future<void> _getAddressFromLatLng(LatLng position) async {
    try {
      Address address = await geoCode.reverseGeocoding(
        latitude: position.latitude,
        longitude: position.longitude,
      );
      setState(() {
        _address = "${address.streetAddress}, ${address.city}, ${address.countryName}";
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    _marker.addAll(_list);
  }

  static const CameraPosition _cameraPosition =
      CameraPosition(target: LatLng(23.0457344, 72.5450752), zoom: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            markers: Set.of(_marker),
            compassEnabled: true,
            myLocationEnabled: true,
            initialCameraPosition: _cameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _completer.complete(controller);
            },
            onTap: (LatLng tappedPoint) {
              setState(() {
                _selectedLocation = tappedPoint;
                _marker.add(
                  Marker(
                    markerId: MarkerId("selected"),
                    position: tappedPoint,
                    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
                  ),
                );
                _getAddressFromLatLng(tappedPoint);
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              color: AppColors.backgroundColors,
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  _selectedLocation != null
                      ? "Address: ${_address ?? "Fetching address..."}"
                      : "Tap on the map to select a location",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
