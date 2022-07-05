import 'package:bca_mobile_redesign/common/provider/cancel_provider.dart';
import 'package:bca_mobile_redesign/layouts/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CancelProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.overpass(fontSize: 14).fontFamily,
        ),
        color: Colors.blue.shade400,
        home: const LoginView(),
      )));
}
