import 'package:flutter/material.dart';

//Color
const Color kcPrimaryColor = Color.fromARGB(255, 161, 227, 178);
const Color kcMediumGreyColor = Color(0xff868686);

//Font Sizing
const double kBodyTextSize = 16;

//TextStyle
const TextStyle ktsMediumGreyBodyText = TextStyle(
  color: kcMediumGreyColor,
  fontSize: kBodyTextSize,
);

//Default Padding
const double kDefaultPadding = 20.0;

//Gradient
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
