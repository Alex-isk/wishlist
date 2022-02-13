import 'package:flutter/material.dart';
import 'package:wishlist/resource/wishlist_colors.dart';
import 'package:wishlist/widgets/account/register_button.dart';
import 'package:wishlist/widgets/account/verification_email_button.dart';

import 'account_form_widget.dart';

class AccountTextWidget extends StatelessWidget {
  const AccountTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: WishlistColors.whiteText,
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/wall2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const AccountFormWidget(),
            const SizedBox(height: 25),
            Text(
              'Чтобы пользоваться всеми возможностями MY WISHLIST, необходимо войти в свою учётную запись.',
              style: textStyle,
              softWrap: true,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 30),
            Text(
              'Если у вас нет учётной записи, рекоммендуем зарегистрироваться. Её регистрация является бесплатной и простой.',
              style: textStyle,
              softWrap: true,
              overflow: TextOverflow.clip,
            ),


            const SizedBox(height: 5),
            RegisterButton(),
            const SizedBox(height: 25),
            Text(
              'Если Вы зарегистрировались, \nно не получили письмо для подтверждения, '
              'нажмите здесь, чтобы отправить письмо повторно.',
              style: textStyle,
              softWrap: true,
              overflow: TextOverflow.clip,
            ),
            const SizedBox(height: 5),
            VerificationEmailButton(),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

