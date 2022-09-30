library xmpextension;

import 'package:flutter/material.dart';

extension Shadow on Widget{

  applyShadow({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color shadowColor =  Colors.black,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: shadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}