import 'package:flutter/material.dart';

void navi(int x,context) {
  if (x == 0) {
    Navigator.of(context).pushNamed('/Alarm');
  } else if (x == 1) {
    Navigator.of(context).pushNamed('/Play');
  } else if (x == 2) {
    Navigator.of(context).pushNamed('/Upload');
  } else if (x == 3) {
    Navigator.of(context).pushNamed('/Capture');
  }
}
