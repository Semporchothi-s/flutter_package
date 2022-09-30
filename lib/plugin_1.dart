library plugin_1;

import 'package:flutter/material.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class XmpTextField {
  Widget primaryTextField({String? validationText, String? textFieldHint}) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        textCapitalization: TextCapitalization.sentences,
        validator: (value) {
          if (value!.isEmpty) {
            return validationText;
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(width: 0.5, color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide:
                  const BorderSide(width: 0.5, color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
              borderSide: const BorderSide(width: 0.5, color: Colors.green)),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(width: 0.5, color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(width: 0.5, color: Colors.red),
          ),
          counterStyle: const TextStyle(fontSize: 12, height: 0.5),
          errorMaxLines: 3,
          errorStyle: const TextStyle(fontSize: 11, color: Colors.red),
          hintStyle: TextStyle(
            color: Colors.grey.shade400
          )
        ));
  }
}
