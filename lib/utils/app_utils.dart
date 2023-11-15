import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../generated/assets.gen.dart';

class AppUtils {
  static Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
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
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return Geolocator.getCurrentPosition();
  }

  static Widget getWeatherIcon(int code) {
    switch (code) {
      case >= 200 && < 300:
        return Assets.images.one.image();
      case >= 300 && < 400:
        return Assets.images.two.image();
      case >= 500 && < 600:
        return Assets.images.three.image();
      case >= 600 && < 700:
        return Assets.images.four.image();
      case >= 700 && < 800:
        return Assets.images.five.image();
      case == 800:
        return Assets.images.six.image();
      case > 800 && <= 804:
        return Assets.images.seven.image();
      default:
        return Assets.images.seven.image();
    }
  }
}
