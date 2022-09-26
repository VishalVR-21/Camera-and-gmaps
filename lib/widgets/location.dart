import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Locations extends StatefulWidget {
  const Locations({Key key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}
String preview;

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          height: 200,
          width: double.infinity,
          child: preview == null? Text('No location chosen'):Image.network(preview,fit: BoxFit.cover,width: double.infinity,)
        ),
        Row(
          children: [
            TextButton.icon(onPressed: (){}, icon:  Icon(Icons.location_on),label: Text('Current location')),
            TextButton.icon(onPressed: (() {
              
            }),
            icon: Icon(Icons.map),
            )

          ],
        )
      ]
      ),
    )
  }
}