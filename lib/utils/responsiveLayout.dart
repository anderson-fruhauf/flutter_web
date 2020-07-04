import 'package:flutter/material.dart';

class Responsivelayout {
  static bool isSmallScren(BuildContext context) {
    return MediaQuery.of(context).size.width < 1050;
  }
}
