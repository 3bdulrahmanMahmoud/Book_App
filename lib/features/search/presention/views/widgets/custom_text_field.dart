
  import 'package:flutter/material.dart';

TextField customTextField() {
    return TextField(
        decoration: InputDecoration(
          border: customOutlineBorder(),
          focusedBorder: customOutlineBorder(),
        ),
      );
  }

  OutlineInputBorder customOutlineBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(10));
  }

