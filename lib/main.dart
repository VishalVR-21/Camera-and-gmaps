import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/provider/great_place.dart';
import 'package:flutter_complete_guide/widgets/image_adder.dart';
import 'package:provider/provider.dart';
import './screens/places_list.dart';
import './screens/add_place.dart';
import './screens/place_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Great_Place(),
      child: MaterialApp(
        title: 'Place loctor',
        home: PlaceListScreen(),
        routes: {
          AddPlaceScreen.routeName: (context) => AddPlaceScreen(),
          PlaceListScreen.routename: (context) => PlaceListScreen(),
          Place_Detail.routename: (context) => Place_Detail(),
        },
      ),
    );
  }
}
