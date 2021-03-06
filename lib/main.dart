import 'package:flutter/material.dart';
import 'package:wishlist/widgets/account/account_widget.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wishlist',
      // theme: ThemeData(fontFamily: 'Murecho'),
      home: AccountWidget(),
    );
  }
}
