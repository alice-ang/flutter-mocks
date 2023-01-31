import 'package:flutter/material.dart';
import 'package:new_flutter_template/styles/utils.dart';

class Styles {
  // declare two fonts into separate varibales
  static const String trojanFont = 'Trajan Pro';
  static const String schylerFont = 'Schyler';

  // header style
  static const TextStyle headerStyles = TextStyle(
    fontFamily: trojanFont,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black87,
  );

  // extend the header style into body
  static final bodyStyle = extend(headerStyles,
      const TextStyle(fontSize: 40, decoration: TextDecoration.underline));

  static const TextStyle buttonStyles = TextStyle(
    fontFamily: schylerFont,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: Colors.white,
  );

  static BoxDecoration stylizedBox = BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(20)),
    border: Border.all(width: 2),
    color: Colors.white,
  );
}
