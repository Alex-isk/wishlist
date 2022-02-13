import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';

class RegisterButton extends StatefulWidget {
  RegisterButton({Key? key}) : super(key: key);

  @override
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
        MaterialStateProperty.all(WishlistColors.green),
      ),
      child: Text(
        'Register',
        style: TextStyle(
          fontSize: 16,
          color: WishlistColors.whiteText,
        ),
      ),
    );
  }
}
