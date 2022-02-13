import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/account/account_widget.dart';
import 'package:wishlist/widgets/main_screen/main_screen_widget.dart';
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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: WishlistColors.greyText,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: WishlistColors.greyText,
          unselectedItemColor: WishlistColors.greyIcon,
          selectedItemColor: WishlistColors.green,
        ),
        fontFamily: 'Comfortaa',
      ),
      routes: {
        '/': (context) => AccountWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
     initialRoute: '/',                             /// заменяем home: AccountWidget(),
    );
  }
}
