import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/wish_list/wishlists_widget.dart';

class WishlistCardWidget extends StatefulWidget {
  final int wishlistId;
   WishlistCardWidget({Key? key,
     required this.wishlistId
   }) : super(key: key);

  @override
  State<WishlistCardWidget> createState() => _WishlistCardWidgetState();
}

class _WishlistCardWidgetState extends State<WishlistCardWidget> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      extendBodyBehindAppBar: true, /// прозрачный AppBar
      appBar: AppBar(
        // elevation: 0,  /// прозрачный AppBar/// убрали тень
        // backgroundColor: WishlistColors.greyOpacity3,
        // iconTheme: IconThemeData(color: WishlistColors.whiteGreen, size: 35),
        // backgroundColor: Colors.transparent,/// прозрачный AppBar
        // flexibleSpace: Image(
        //   // image: AssetImage('lib/assets/images/boards.jpg'),
        //   image: AssetImage('lib/assets/images/wall2.jpg'),
        //   // image: AssetImage('lib/assets/images/gift_header.jpg'),
        //   fit: BoxFit.cover,
        // ),
        title: Text(
          'NAME WISH',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: WishlistColors.whiteGreen,
            fontWeight: FontWeight.w900,
            fontSize: 25,
            // backgroundColor: WishlistColors.greenOpacity,
            // fontFamily: 'Zilla',
            // fontFamily: 'SonsieOn',
            // fontFamily: 'Bombing.ttf',
            // color: WishlistColors.greyText,
            // letterSpacing: 4,                // межбуквенный интервал
            // height: 20,                     // высота строки
          ),
        ),
        // automaticallyImplyLeading: true,
        // actions: [
        // SizedBox(width: 20), /// ???
        // IconButton(
        //   color: WishlistColors.whiteGreen,
        //   alignment: Alignment.centerRight,
        //   onPressed: () {},
        //   icon: Icon(Icons.search),
        // ),
        // SizedBox(width: 20),
        //   IconButton(
        //     iconSize: 40,
        //     color: WishlistColors.whiteGreen,
        //     alignment: Alignment.centerRight,
        //     onPressed: () {},
        //     icon: Icon(Icons.menu_outlined),
        //   ),
        // ],

      ),
      body: IndexedStack(
        // index: _selectedTab,
        children: [
          Text('delete'),
          Text('share'), ///редактировать
          Text('add'),  ///сохранить

        ],
      ),
      // body: Center(
      //   child: _widgetOptions[_selectedTab],
      // ),


      extendBody: true, /// в Scaffolld невидимый bottomNavigationBar: BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(

          elevation: 0.0,
          backgroundColor: WishlistColors.greyOpacity,
          ///
          // currentIndex: _selectedTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_forever_outlined),
              label: 'delete',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_outlined),
              label: 'edit',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(
            //     Icons.my_library_add,
            //   ),
            //   label: 'add',
            // ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.save_outlined,
              ),
              label: 'save',
            ),
          ],
          // onTap:           ///onSelectedTab
      ),
    );
  }
}

