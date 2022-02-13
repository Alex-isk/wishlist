import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';

class AccountTextStyleWidget extends StatelessWidget {
  const AccountTextStyleWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: WishlistColors.whiteText,
      ),
    );
  }
}
