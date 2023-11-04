import 'package:flutter/material.dart';
import 'package:s_and_z_events/Screens/Sign_in.dart';
import 'package:s_and_z_events/Screens/loading.dart';
import 'package:s_and_z_events/Screens/log_in.dart';
import 'package:s_and_z_events/Screens/products.dart';
import 'package:s_and_z_events/Card/CardView.dart';
import 'package:google_fonts/google_fonts.dart';

// background color : 0xffFDCFF3
// font color :
// forground color:0xffDE89BE
//app bar background color : 0xffDE89BE
//cursor color: 0xff40434E
// text field text color : 0xffFDCFF3
//text field border color : 0xFFC297B8

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    theme: _buildTheme(Brightness.dark),

    home: Products(),
  ));
}
ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(brightness: brightness);

  return baseTheme.copyWith(
    textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
  );
}