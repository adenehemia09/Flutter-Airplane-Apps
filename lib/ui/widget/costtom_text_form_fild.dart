import 'package:airplace_apps/models/theme.dart';
import 'package:flutter/material.dart';

class CosttomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;

  const CosttomTextFormField({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle,
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 55,
            child: TextFormField(
              cursorColor: kBlackColor,
              obscureText: obscureText,
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                fillColor: kwhitehColor,
                hintText: hintText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    17,
                  ),
                  borderSide: BorderSide(
                    color: kInactiveColor,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(17),
                  borderSide: BorderSide(
                    color: kprimaryColor,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
