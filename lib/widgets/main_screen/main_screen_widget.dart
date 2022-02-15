import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/wish_list/wishlist_widget.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);
  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 2;

  static final List<Widget> _widgetOptions = <Widget>[
    // Text('delete'),
    Text('share'),
    Text('add'),
    WishlistWidget(),
  ];

  void onSelectedTab(int index) {
    setState(() {
      if (_selectedTab == index) return;
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: WishlistColors.greenOpacity,
        flexibleSpace: Image(
          // image: AssetImage('lib/assets/images/boards.jpg'),
          image: AssetImage('lib/assets/images/wall2.jpg'),
          // image: AssetImage('lib/assets/images/gift_header.jpg'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'My Wishlist',
          textAlign: TextAlign.start,
          style: TextStyle(
            backgroundColor: WishlistColors.greenOpacity,
            // fontFamily: 'Zilla',
            fontFamily: 'SonsieOn',
            // color: WishlistColors.greyText,
            color: WishlistColors.whiteText,
            fontWeight: FontWeight.w900,
            // letterSpacing: 4, // межбуквенный интервал
            // height: 20,                     // высота строки
            fontSize: 25,
            // fontFamily: 'Bombing.ttf',
          ),
        ),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          items: [
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.delete_forever_outlined),
            //   label: 'delete',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share_sharp),
              label: 'share',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_add,
              ),
              label: 'add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.format_list_bulleted_sharp,
              ),
              label: 'list',
            ),
          ],
          onTap: onSelectedTab),
    );
  }
}
