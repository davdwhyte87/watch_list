import 'package:flutter/material.dart';

class Scaller {
  BuildContext context;
  double? scale;
  double? textScaleFactor;
  int? mockupWidth;
  double? width;
  Scaller({required this.context}){
    mockupWidth = 428;
    final mockupHeight = 926;
    width = MediaQuery.of(context).size.width;
    scale = (mockupWidth!/width!);
    textScaleFactor = (width!/mockupWidth!);
  }

  double getSizedBoxHeight(int height){
    return 70/mockupWidth!* width!;
  }

}