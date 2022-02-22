import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/resource/wishlist_image.dart';
import 'package:wishlist/styles/glass.dart';
import 'package:wishlist/widgets/wish_list/info_wish_widget.dart';

// class Wish {
//   final String image;
//   final String name;
//   final String price;
//   final String info;
//   // final int category;
//   // final Color color;
//   // final String url;
//
//   const Wish({
//    required this.image,
//    required this.name,
//    required this.price,
//    required this.info,
//   }) ;
// }

class WishlistsWidget extends StatefulWidget {



  WishlistsWidget({Key? key}) : super(key: key);



  @override
  State<WishlistsWidget> createState() => _WishlistsWidgetState();
}

class _WishlistsWidgetState extends State<WishlistsWidget> {
  var _filteredWishes = <Wish>[];

  final _searchController = TextEditingController();

  void _searchWishes() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredWishes = wishes.where((Wish wish) {
        return wish.name.toLowerCase().contains(query.toLowerCase());// contains проверяет содержит строка внутри себя др строку query
        /// привести name в прописные toLowerCase() и искать прописные можно выбрать заглавные
      },).toList();
    } else {    /// если поиск пустой - показываем все желания
      _filteredWishes = wishes;
    }
    setState(() {

    });
  }
  @override
  void initState() {
    super.initState();
    _filteredWishes = wishes;  /// что бы список сразу не был пустой сразу через initState вызывался список
    _searchController.addListener(_searchWishes);
  }

void _onWishlistTap(int index) {
    final id = wishes[index].id;  /// в списке получить переход по индексу
Navigator.of(context).pushNamed('/main_screen/add_widget/', arguments: id,); /// через arguments можно все что угодно передать - напр  id
}
/// получаем навигатор, делаем пушнейме и указать "имя роута" и передали в аргумент id
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/boards.jpg'),
          // image: AssetImage('lib/assets/images/wall2.jpg'),
          // image: AssetImage('lib/assets/images/gift_header.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.only(top: 113),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredWishes.length,
            itemExtent: 100,
            itemBuilder: (BuildContext context, int index) { /// формируется номер текущей строчки index
              final wish = _filteredWishes[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: Stack(
                  children: [
                    GlassMorphism(
                      start: 0.5,       // 0.3
                      end: 0.3,         // 0.1
                      child: Container(
                        decoration: BoxDecoration(
                          color: WishlistColors.greenOpacity,

                          ///
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),

                          ///
                          // border: Border.all(color: WishlistColors.greyBorder),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 8,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        clipBehavior: Clip.hardEdge,

                        /// скругляем углы у картинки под контейнер
                        child: Row(
                          children: [
                            Container(
                              width: 120,
                              height: 200,
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(wish.image),
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 5),
                                  Text(
                                    wish.name.toUpperCase(),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: WishlistColors.greyText),

                                    ///
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    wish.price,
                                    style: TextStyle(
                                        color: WishlistColors.greyText,
                                        fontStyle: FontStyle.italic),

                                    ///
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    wish.info,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        TextStyle(color: WishlistColors.greyText),

                                    ///
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                       // onTap: _onWishlistTap  /// нельзя так сделать тк  onTap не имеет аргументов
                        //                     /// а _onWishlistTap имеет (int)
                        /// это можно сделать так - положить в onTap: анонимную функцию () =>и уже внутри этой функции вызвать и передать индекс
                        onTap: () => _onWishlistTap(index),  /// index номер текущей строчки
/// при нажатии открывается карточка строчки
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          MainTextFieldWidget(searchController: _searchController),
        ],
      ),
    );
  }
}




class MainTextFieldWidget extends StatelessWidget {
  const MainTextFieldWidget({
    Key? key,
    required TextEditingController searchController,
  }) : _searchController = searchController, super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return
      // Container(
      // width: 50,
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 80),

      child: TextField(
        // maxLength: 12,
        textInputAction: TextInputAction.next,
        controller: _searchController,
        cursorColor: WishlistColors.green,
        style: TextStyle(
          fontSize: 16,
          color: WishlistColors.whiteText,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: WishlistColors.greenOpacity2,
          helperStyle: TextStyle(color: WishlistColors.whiteText),
          // suffixIcon: Icon(Icons.drive_file_rename_outline),
          // errorText: 'error',
          // labelText: 'Username',
          // labelStyle: TextStyle(fontSize: 20,
          //   // fontWeight: FontWeight.bold,
          //   color: WishlistColors.whiteText,),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3), /// высота и ширина поля
          isCollapsed: true,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: WishlistColors.green, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: WishlistColors.whiteText, width: 1),
          ),
          // errorBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //       color: WishlistColors.redText, width: 1
          //   ),
          // ),
        ),
      ),
    );
  }
}

