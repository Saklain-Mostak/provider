import 'package:flutter/material.dart';

class FontSizeProvider extends ChangeNotifier {
double textSize=16.0;
Color colorprimary=Colors.amber;

void setTextSize(double newSize) {
  textSize=newSize;
  notifyListeners();
}

void setColor(Color newcolor){
colorprimary=newcolor;
notifyListeners();

}

}