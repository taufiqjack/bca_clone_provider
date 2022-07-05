import 'package:bca_mobile_redesign/common/bloc/cancel_bloc.dart';
import 'package:bca_mobile_redesign/layouts/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  /** using provider */

  // runApp(ChangeNotifierProvider(
  //     create: (context) => CancelProvider(),
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       theme: ThemeData(
  //         fontFamily: GoogleFonts.overpass(fontSize: 14).fontFamily,
  //       ),
  //       color: Colors.blue.shade400,
  //       home: const LoginView(),
  //     )));

/** using Flutter Bloc */

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.overpass(fontSize: 14).fontFamily,
      ),
      color: Colors.blue.shade400,
      home: BlocProvider(
        create: (context) => CancelBloc(),
        child: const LoginView(),
      )));
}
