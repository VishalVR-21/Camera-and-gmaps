import 'dart:io';

import 'package:flutter/cupertino.dart';

class Placeholder {
  final latitude;
  final longitude;
  final String address;

  Placeholder(@required this.latitude,@required this.longitude, this.address);
}

class Place {
  final String id;
  final String title;
  final Placeholder location;
  final File image;
  Place({
    @required this.id,
    @required this.title,
    @required this.location,
    @required this.image,
  });
}
