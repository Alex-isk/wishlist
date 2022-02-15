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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Wishlist',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          // backgroundColor: Colors.transparent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: WishlistColors.greenOpacity,
          unselectedItemColor: WishlistColors.greyIcon,
          selectedItemColor: WishlistColors.whiteText,
        ),
        // fontFamily: 'Comfortaa',///
        // fontFamily: 'MPLUSRound',///
        // fontFamily: 'ZenMaruGothic',
        // fontFamily: 'Zilla',///
        // fontFamily: 'ZillaSlabHighlight',///
        // fontFamily: 'SonsieOn',
        // fontFamily: 'Murechob',  ///
        fontFamily: 'IstokWeb',
        // fontFamily: 'Dosis', ///
        // fontFamily: 'HindMadurai',
      ),
      routes: {
        '/': (context) => AccountWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
     initialRoute: '/',                             /// заменяем home: AccountWidget(),
    );
  }
}



// child: Theme(
// data: Theme.of(context)
//     .copyWith(canvasColor: Colors.transparent),
// child: BottomNavigationBar(
// currentIndex: 0,
// items: [
// BottomNavigationBarItem(
// icon: Icon(Icons.home), title: Text('Home')),
// BottomNavigationBarItem(
// icon: Icon(Icons.home), title: Text('Home')),
// BottomNavigationBarItem(
// icon: Icon(Icons.home), title: Text('Home'))
// ],
//