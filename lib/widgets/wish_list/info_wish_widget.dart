import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/resource/wishlist_image.dart';

class Wish {
  final String image;
  final String name;
  final String price;
  final String info;
  // final int category;
  // final Color color;
  // final String url;

  const Wish({
    required this.image,
    required this.name,
    required this.price,
    required this.info,
    // required this.category,
    // required this.color,
    // required this.url,
  });
}

final wishes = [
  Wish(
    image: WishlistImage.bike,
    name: 'Горный велосипед',
    price: '50 000',
    info: 'bike Mercedes-Benz Run quickly 27, рама карбон, задний амортизатор',
    // category:
    // color:
    // url:
  ),
  Wish(
    image: WishlistImage.photo,
    name: 'photo',
    price: '22 000',
    info: 'Устройство для регистрации неподвижных изображений. Запись изображения в фотоаппарате осуществляется фотохимическим способом при воздействии света на светочувствительный фотоматериал.',
    // category:
    // color:
    // url:
  ),
  Wish(
    image: WishlistImage.auto,
    name: 'Chevrolet Chevelle SS Wagon 1970',
    price: '555 000',
    info: 'The Chevrolet Chevelle is a mid-sized automobile that was produced by Chevrolet in three generations for the 1964 through 1978 model years.',
    // category:
    // color:
    // url: https://www.pinterest.ru/pin/359795457701546376/
  ),
  Wish(
    image: WishlistImage.home,
    name: 'home',
    price: '2 000 000',
    info: 'дом с видом на прошлогоднюю осень',
    // category:
    // color:
    // url:
  ),
  Wish(
    image: WishlistImage.toothbrush ,
    name: 'toothbrush',
    price: '1500',
    info: 'электрическая зубная щетка',
    // category:
    // color:
    // url:
  ),
  Wish(
    image: WishlistImage.book,
    name: 'хорошая книга',
    price: '1000',
    info: 'Понедельник начинается в субботу, братья Стругацкие А Б',
    // category:
    // color:
    // url:
  ),
  Wish(
    image: WishlistImage.denim,
    name: 'denim',
    price: '2500',
    info: 'Levis - 501',
    // category:
    // color:
    // url:
  ),
];

// class InfoWishWidget extends StatelessWidget {
//   final String image;
//   final String name;
//   final String info;
//   // final String url;
//   final String price;
//   // final int category;
//   // final Color color;
//
//
//
//   const InfoWishWidget({
//     Key? key,
//    required this.image,
//    required this.name,
//    required this.info,
//    required this.price,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image(
//           image: AssetImage(image),
//         ),
//         SizedBox(width: 5),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Text(
//                 name.toUpperCase(),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: WishlistColors.greyText),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 price,
//                 style: TextStyle(color: WishlistColors.greyIcon),
//               ),
//               Text(
//                 info,
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
//
