import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/resource/wishlist_image.dart';

class Wish {
  final int id;
  final String image;
  final String name;
  final String price;
  final String info;
  // final int category;
  // final Color color;
  // final String url;

  const Wish({
    required this.id,
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
    id: 1,
    image: WishlistImage.bike,
    name: 'Горный велосипед',
    price: '50 000',
    info: 'bike Mercedes-Benz Run quickly 27, рама карбон, задний амортизатор',
    // category:
    // color:
    // url:
  ),
  Wish(
    id: 2,
    image: WishlistImage.photo,
    name: 'photo',
    price: '22 000',
    info: 'Устройство для регистрации неподвижных изображений. Запись изображения в фотоаппарате осуществляется фотохимическим способом при воздействии света на светочувствительный фотоматериал.',
    // category:
    // color:
    // url:
  ),
  Wish(
    id: 3,
    image: WishlistImage.auto,
    name: 'Chevrolet Chevelle SS Wagon 1970',
    price: '555 000',
    info: 'The Chevrolet Chevelle is a mid-sized automobile that was produced by Chevrolet in three generations for the 1964 through 1978 model years.',
    // category:
    // color:
    // url: https://www.pinterest.ru/pin/359795457701546376/
  ),
  Wish(
    id: 4,
    image: WishlistImage.home,
    name: 'home',
    price: '2 000 000',
    info: 'дом с видом на прошлогоднюю осень',
    // category:
    // color:
    // url:
  ),
  Wish(
    id: 5,
    image: WishlistImage.toothbrush ,
    name: 'toothbrush',
    price: '1500',
    info: 'электрическая зубная щетка',
    // category:
    // color:
    // url:
  ),
  Wish(
    id: 6,
    image: WishlistImage.book,
    name: 'хорошая книга',
    price: '1000',
    info: 'Понедельник начинается в субботу, братья Стругацкие А Б',
    // category:
    // color:
    // url:
  ),
  Wish(
    id: 7,
    image: WishlistImage.denim,
    name: 'denim',
    price: '2500',
    info: 'Levis - 501',
    // category:
    // color:
    // url:
  ),
];
