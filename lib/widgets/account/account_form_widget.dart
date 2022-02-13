import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/account/account_text_style_widget.dart';
import 'package:wishlist/widgets/account/text_field_widget.dart';

class AccountFormWidget extends StatefulWidget {
  const AccountFormWidget({Key? key}) : super(key: key);

  @override
  _AccountFormWidgetState createState() => _AccountFormWidgetState();
}

class _AccountFormWidgetState extends State<AccountFormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String? errorText = null;

  void _account() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      print('open app');
      errorText = null;
    } else {
      errorText = "Не верный логин или пароль";
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {


    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          errorTextStyle(errorText),
          SizedBox(height: 20),
        ],
        AccountTextStyleWidget(
          text: 'Username',
        ),
        const SizedBox(height: 5),
        TextFieldWidget(
          controller: _loginTextController,
          obscureText: false,
        ),
        const SizedBox(height: 20),
        AccountTextStyleWidget(
          text: 'Password',
        ),
        const SizedBox(height: 5),
        TextFieldWidget(
          controller: _passwordTextController,
          obscureText: true,
        ),
        const SizedBox(height: 25),
        Row(
          children: [
            TextButton(
              onPressed: _account,
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(WishlistColors.green)),
              child: AccountTextStyleWidget(
                text: 'Login',
              ),
            ),
            const SizedBox(width: 30),
            OutlinedButton(
              onPressed: _resetPassword,

              // style: ButtonStyle(
              //   padding: MaterialStateProperty.all(
              //     EdgeInsets.symmetric(horizontal: 15, vertical: 8),

              child: AccountTextStyleWidget(
                text: 'Reset password',
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.5, color: WishlistColors.whiteText),
              ),
            ),

            // onPressed: _resetPassword,
            // style: ElevatedButton.styleFrom(
            // // foregroundColor: MaterialStateProperty.all(WishlistColors.whiteText,),
            // // side: MaterialStateProperty.all(WishlistColors.whiteText),
            // // shape: MaterialStateProperty.all(RoundedRectangleBorder(
            // //     borderRadius: BorderRadius.,
            // side: BorderSide(width: 2.0, color: WishlistColors.whiteText),),),
            // //   shadowColor: MaterialStateProperty.all(WishlistColors.green),
            // // backgroundColor: MaterialStateProperty.all(color),
            // // foregroundColor: MaterialStateProperty.all(color),
            // // textStyle: MaterialStateProperty.all(textStyle),
          ],
        ),
      ],
    );
  }

  Text errorTextStyle(String errorText) {
    return Text(
      errorText,
      style: TextStyle(
        color: WishlistColors.redText,
        fontSize: 17,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

