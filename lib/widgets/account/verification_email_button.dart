import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';

class VerificationEmailButton extends StatefulWidget {
  VerificationEmailButton({Key? key}) : super(key: key);

  @override
  _VerificationEmailButtonState createState() =>
      _VerificationEmailButtonState();
}

class _VerificationEmailButtonState extends State<VerificationEmailButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Verification email',
        style: TextStyle(
          fontSize: 16,
          color: WishlistColors.whiteText,
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.5, color: WishlistColors.whiteText),
      ),
    );
  }
}


