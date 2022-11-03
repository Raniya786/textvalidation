import 'package:flutter/material.dart';
class Validator{
  static String? nameValidator(String value){
    if(value.isEmpty){
      return 'required';
    }
  }
  static String? passwordValidator(String value) {
    if (value.isEmpty) {
      return 'required';
    }
    if (value.length!=8) {
      return 'you enter atleast 8 latters';
    }
  }
}
