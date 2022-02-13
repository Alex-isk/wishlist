import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);
  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 2;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('delete'),
    Text('share'),
    Text('add'),
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
        backgroundColor: WishlistColors.greyText,
        title: Center(
          child: Text(
            'My Wishlist',
            style: const TextStyle(
              // fontFamily: 'Zilla',
              fontFamily: 'SonsieOn',
              color: WishlistColors.green,
              fontWeight: FontWeight.w800,
              // letterSpacing: 4, // межбуквенный интервал
              // height: 20,                     // высота строки
              fontSize: 20,
              // fontFamily: 'Bombing.ttf',
            ),
          ),
        ),
      ),

      body: Center(
        child: _widgetOptions[_selectedTab],
      ),

      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.delete_forever_outlined),
              label: 'delete',
            ),
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
          ],
          onTap: onSelectedTab),
    );
  }
}
