import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'account_text_widget.dart';

class AccountWidget extends StatefulWidget {
  AccountWidget({Key? key}) : super(key: key);

  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: WishlistColors.greyText,
        title: Center(
          child: Text(
            'Login to your account',
            style: const TextStyle(fontFamily: 'Dosis',
              color: WishlistColors.green,
              fontWeight: FontWeight.w500,
              // letterSpacing: 4, // межбуквенный интервал
              // height: 20,                     // высота строки
              fontSize: 20,
              // fontFamily: 'Bombing.ttf',
            ),
          ),
        ),
      ),
      body: ListView(
        children: [AccountTextWidget()],
      ),
    );
  }
}
