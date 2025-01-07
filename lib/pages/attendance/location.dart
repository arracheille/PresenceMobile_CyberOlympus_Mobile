import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);
  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  double latitude = 0;
  double longitude = 0;

  String location = 'Null, Press Button';
  String Address = 'search';
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    Address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coordinates Points',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              location,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'ADDRESS',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('${Address}'),
            ElevatedButton(
                onPressed: () async {
                  Position position = await _getGeoLocationPosition();
                  location =
                      'Lat: ${position.latitude} , Long: ${position.longitude}';
                  GetAddressFromLatLong(position);
                  tes(position.latitude, position.longitude);
                },
                child: Text('Get Location'))
          ],
        ),
      ),
    );
  }
}

bool isPointInPolygon(LatLng point, List<LatLng> polygon) {
  int intersections = 0;
  for (int i = 0; i < polygon.length; i++) {
    LatLng p1 = polygon[i];
    LatLng p2 = polygon[(i + 1) % polygon.length];

    if ((point.latitude > p1.latitude) != (point.latitude > p2.latitude)) {
      double xIntersection = (point.latitude - p1.latitude) *
              (p2.longitude - p1.longitude) /
              (p2.latitude - p1.latitude) +
          p1.longitude;
      if (point.longitude < xIntersection) {
        intersections++;
      }
    }
  }
  return intersections % 2 != 0;
}

void tes(double lat, double long) {
  // [{"lat":-7.739880384661994,"lng":110.36781994174139},{"lat":-7.740398383253835,"lng":110.3687252109911},{"lat":-7.7409374373743,"lng":110.36842345462931},{"lat":-7.740528935186689,"lng":110.36744168362068}]
  List<dynamic> data = [
    {"lat": 52.53080778623983, "lng": 13.384352444062698},
    {"lat": 52.530572823550756, "lng": 13.383871792335478},
    {"lat": 52.53028303454478, "lng": 13.384309528718335},
    {"lat": 52.530439677510785, "lng": 13.385146377928493},
    {"lat": 52.5306433124115, "lng": 13.38512492025817},
    {"lat": 52.53092265637038, "lng": 13.384979008020316}
  ];
  LatLng newPoint = LatLng(lat, long);
  List<LatLng> list = data.map((item) {
    return LatLng(
        item['lat'], item['lng']); // Mengembalikan LatLng, bukan Set<LatLng>
  }).toList();

  List<LatLng> polygon = list;
  bool isInside = isPointInPolygon(newPoint, polygon);

  print(isInside);
}
