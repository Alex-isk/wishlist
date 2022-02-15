import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/resource/wishlist_image.dart';
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



class WishlistWidget extends StatelessWidget {

  // final _wishes = [
  //   Wish(
  //     image: WishlistImage.bike,
  //     name: 'bike',
  //     price: '20 000',
  //     info: 'велосипед Мерседес-Бенц, рама карбон, задний амортизатор',
  //   ),
  // ];

  WishlistWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          // image: AssetImage('lib/assets/images/boards.jpg'),
          image: AssetImage('lib/assets/images/wall2.jpg'),
          // image: AssetImage('lib/assets/images/gift_header.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
        //     .onDrag,
        itemCount: wishes.length,
        itemExtent: 100,
        itemBuilder: (BuildContext context, int index) {
          final wish = wishes[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: WishlistColors.greenOpacity, ///
                    border: Border.all(color: Colors.black.withOpacity(0.2)),

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
                      Container(width: 120, height: 200,

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
                                  color: WishlistColors.greyText),///
                            ),
                            SizedBox(height: 5),
                            Text(
                              wish.price,
                              style: TextStyle(color: WishlistColors.greyText, fontStyle: FontStyle.italic),///
                            ),
                            SizedBox(height: 3),
                            Text(
                              wish.info,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: WishlistColors.greyText),///
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      print('1111');
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

//
// class InfoWishWidget extends StatelessWidget {
//   const InfoWishWidget({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image(
//           image: AssetImage(WishlistImage.bike),
//         ),
//         SizedBox(width: 5),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Text(
//                 'Bike'.toUpperCase(),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: WishlistColors.greyText),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 '20 000 р.',
//                 style: TextStyle(color: WishlistColors.greyIcon),
//               ),
//               Text(
//                 'описание  описание описание описание описание описание описание описание описание описание описание описание описание описание',
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(width: 5),
//       ],
//     );
//   }
// }
