import 'package:airplace_apps/models/theme.dart';
import 'package:airplace_apps/ui/widget/costtom_botton.dart';
import 'package:airplace_apps/ui/widget/costtom_text_form_fild.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget content() {
      /// Mote: Meminta Fulll Name Imput
      Widget nameInput() {
        return CosttomTextFormField(
          title: "Full Name",
          hintText: "Your full name",
        );
      }

      /// Note: Meminta Emaail Imput
      Widget emailInput() {
        return CosttomTextFormField(
          title: "Email Addreas",
          hintText: "Your email addreas",
        );
      }

      /// Note: Meminta password Input
      Widget passwordInput() {
        return CosttomTextFormField(
          title: "Password",
          hintText: "Your password",
          obscureText: true,
        );
      }

      /// Note: Meminta Input Hobby
      Widget hobbyInput() {
        return CosttomTextFormField(
          title: "Hobby",
          hintText: "Your hobby",
        );
      }

      /// Note: Tombol Submit
      Widget submitButton() {
        return CostomBotton(
          title: 'Get Started',
          marginTop: 10,
          width: 287,
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      /// NOTE: Tulisan paling bawah
      Widget tecButton() {
        return Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
            tecButton()
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kBackgrooudColor,
        body: ListView(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
