import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/account/account_widget.dart';
import 'package:wishlist/widgets/wish_list/wishlist_card_widget%20.dart';
import 'package:wishlist/widgets/main_screen/main_screen_widget.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';


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
        // canvasColor: Colors.transparent, ///
        //
        // colorScheme: ColorScheme.fromSwatch(
        //   backgroundColor: Colors.transparent,
        //     primaryColorDark:Colors.transparent,
        //     accentColor: Colors.transparent,
        //     cardColor: Colors.transparent,
        //   errorColor: Colors.transparent,
        //   brightness: Brightness.,
        // ).copyWith(
        //   secondary: Colors.transparent,
        // ),

        appBarTheme: AppBarTheme(
          elevation: 0,
          // backgroundColor: Colors.transparent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          backgroundColor: Colors.transparent,
          unselectedItemColor: WishlistColors.greyText,
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
        '/main_screen/add_widget/': (context) {
          /// зарегистрировали новый маршрут и указали его имя
          // final id = ModalRoute.of(context)?.settings.arguments as int;
          // /// рисков вариант те если не будет id int или строка или нул = экран ошибки = СМ ниже др вар
          // /// получаем id стр - через МщдалРоут из контекста-сеттингс-достает аргумент в который мы положили id
          // /// но так как он не типизирован (всегда Обджект) - кастанули as в int
          // return WishlistCardWidget(wishlistId: id);

          final arguments = ModalRoute.of(context)?.settings.arguments as int;
          /// создаем отд переменную аргументс (опциональный обджект) и делаем проверку на int
         if (arguments is int) {return WishlistCardWidget(wishlistId: arguments);
         } else {
          return WishlistCardWidget(wishlistId: 0); /// дефолтный влист - лучше экран заглушки
        }
      },
      },
      initialRoute: '/',
      /// заменяем home: AccountWidget(),
    );
  }
}

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
