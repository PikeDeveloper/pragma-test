import 'package:flutter/material.dart';
import 'package:pragma/ui/pages/details/details.dart';
import 'package:pragma/ui/pages/home/home.dart';
import 'package:pragma/ui/shared/full_image.dart';

class Routes {
  static final Map<String, Widget Function(BuildContext)> routes = {
    Home.route: (BuildContext context) => Home(),
    Details.route: (BuildContext context) => Details(),
    FullImage.route: (BuildContext context) => FullImage(),
  };
}
