import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';

class TextFieldWidget extends StatelessWidget {
  final controller;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 12,
      textInputAction: TextInputAction.next,
      controller: controller,
      cursorColor: WishlistColors.green,
      obscureText: obscureText,
      style: TextStyle(
        fontSize: 16,
        color: WishlistColors.whiteText,
      ),
      decoration: InputDecoration(
        helperStyle: TextStyle(color: WishlistColors.whiteText),
        // suffixIcon: Icon(Icons.drive_file_rename_outline),
        // errorText: 'error',
        // labelText: 'Username',
        // labelStyle: TextStyle(fontSize: 20,
        //   // fontWeight: FontWeight.bold,
        //   color: WishlistColors.whiteText,),
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    );
  }
}
