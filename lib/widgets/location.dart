import 'package:flutter/material.dart';
import '../helper/location_helper.dart';
import 'package:location/location.dart';

class Locations extends StatefulWidget {
  const Locations({Key key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

String preview;

class _LocationsState extends State<Locations> {
  Future<void> getocation() async {
    final locData = await Location().getLocation();
    final staticMapImageURL = LocationHelper.generateLoationPreiviewImage(
        longitude: locData.longitude, latitude: locData.latitude);
    setState(() {
      preview = staticMapImageURL;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Center(
          // AIzaSyCXHeT3Qm0h_Mhz-pmDwM48Gswh0vtR0nQ
          child: Container(
            height: 200,
            width: double.infinity,
            child: preview == null
                ? Text(
                    'No location chosen',
                    textAlign: TextAlign.center,
                  )
                : Image.network(
                    preview,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
            decoration:
                BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
          ),
        ),
        Row(
          children: [
            TextButton.icon(
                onPressed: getocation,
                icon: Icon(Icons.location_on),
                label: Text('Current location')),
            TextButton.icon(
              onPressed: (() {}),
              icon: Icon(Icons.map),
              label: Text('location'),
            )
          ],
        )
      ]),
    );
  }
}
