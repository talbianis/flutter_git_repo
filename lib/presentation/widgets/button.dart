//* Globale button

import 'package:flutter/material.dart';

import '../../core/const.dart';

MyButton({
  String bText = 'Button',
  Color color = PrimaryColor,
  double width = 100.0,
}) =>
    Padding(
      padding: const EdgeInsets.all(PaddingS),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                  width: width,
                  height: SBheight,
                  child: Center(
                    child: Text(
                      bText,
                      style: kBodyStyleBold(color: Colors.white),
                    ),
                  )),
            ),
          ),
        ),
      ),
    );

//*elevated button
MyeButton({
  String bText = 'Button',
  Color pColor = PrimaryColor,
  Color oColor = Colors.white,
  double width = 100.0,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: pColor, // background
        onPrimary: oColor, // foreground
      ),
      onPressed: () {},
      child: Text('Button'),
    );

//*check box