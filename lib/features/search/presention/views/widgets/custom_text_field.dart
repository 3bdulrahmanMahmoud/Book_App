import 'package:flutter/material.dart';

TextField customTextField() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Search",
      suffixIcon: const Icon(Icons.search),
      enabledBorder: customOutlineBorder(),
      border: customOutlineBorder(),
      focusedBorder: customOutlineBorder(),
    ),
  );
}

OutlineInputBorder customOutlineBorder() {
  return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(10));
}
