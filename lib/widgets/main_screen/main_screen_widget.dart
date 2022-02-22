import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/styles/glass.dart';
import 'package:wishlist/widgets/wish_list/wishlists_widget.dart';
// import 'package:cupertino_icons/cupertino_icons.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);
  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 2;



  void onSelectedTab(int index) {
    setState(() {
      if (_selectedTab == index) return;
      _selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, /// прозрачный AppBar
      appBar: AppBar(
        // bottom: PreferredSize(preferredSize: PreferredSize., ),

        elevation: 0,  /// прозрачный AppBar/// убрали тень
        backgroundColor: WishlistColors.greyOpacity3,
        iconTheme: IconThemeData(color: WishlistColors.greyText, size: 35),

        // backgroundColor: Colors.transparent,/// прозрачный AppBar
        flexibleSpace: Image(
          image: AssetImage('lib/assets/images/boards.jpg'),
        //   image: AssetImage('lib/assets/images/wall2.jpg'),
        //   // image: AssetImage('lib/assets/images/gift_header.jpg'),
          fit: BoxFit.cover,
        ),
        title: Text(
          'WL',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: WishlistColors.greyText,
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
        automaticallyImplyLeading: true,
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
        index: _selectedTab,
        children: [
          // Text('delete'),
          Text('share'),
          Text('add'),
          WishlistsWidget(),
        ],
      ),
      // body: Center(
      //   child: _widgetOptions[_selectedTab],
      // ),

      drawer: Drawer(

          // backgroundColor: WishlistColors.whiteGreen,
        backgroundColor: WishlistColors.greyText,

        child: ListView(
          children: const <Widget> [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('lib/assets/images/boards.jpg'),fit: BoxFit.cover,)
                // AssetImage('lib/assets/images/boards.jpg'),
                //   image: AssetImage('lib/assets/images/wall2.jpg'),
                //   // image: AssetImage('lib/assets/images/gift_header.jpg'),
                //
                // color: WishlistColors.greenOpacity,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    // color: WishlistColors.whiteText,
                    color: WishlistColors.greyText,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Calendar', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText)),
              leading: Icon(Icons.calendar_today_outlined, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("remind yourself"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              // tileColor: WishlistColors.greenOpacity, /// устанавливает цвет ListTile, когда виджет не выделен
              tileColor: WishlistColors.greyText,
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
              ),
            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Registration', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.app_registration_outlined, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("account"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),

            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Settings', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.settings_rounded, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("for yourself"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),

            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Backup', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.backup_outlined, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("copy"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),

            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Tech. support', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.email_outlined, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("write"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),

            ListTile(
              // onTap: () {
              //   setState(() {
              //     // устанавливаем индекс выделенного элемента
              //     _selectedIndex = index;
              //   });
              // },
              title: Text('Authors', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.copyright_outlined, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.arrow_back_ios_outlined), /// устанавливает виджет, который отображается после основного содержимого
              subtitle: Text("creators"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),

            ListTile(

              title: Text('Version 1.11.11', style:TextStyle(fontSize: 22, color: WishlistColors.whiteText),),
              leading: Icon(Icons.info_outline, color: WishlistColors.whiteText,), /// виджет, который помещается перед элементом списка
              // trailing: Icon(Icons.linear_scale_sharp), /// устанавливает виджет, который отображается после основного содержимого
              // subtitle: Text("creators"),
              // focusColor: WishlistColors.green,
              // selectedColor: WishlistColors.green,  /// устанавливает цвет, который получит ListTile при выделении
              tileColor: WishlistColors.greyText, /// устанавливает цвет ListTile, когда виджет не выделен
              selectedTileColor: Colors.yellow, /// устанавливает цвет, который получит ListTile при выделении
            ),


          ],
        ),
      ),
      extendBody: true, /// в Scaffolld невидимый bottomNavigationBar: BottomNavigationBar
      bottomNavigationBar: GlassMorphism(
        start: 0.5,       // 0.3
        end: 0.3,         // 0.1
        child: BottomNavigationBar(

            elevation: 0.0,
            backgroundColor: WishlistColors.greyOpacity,
            ///
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
      ),
    );
  }
}
