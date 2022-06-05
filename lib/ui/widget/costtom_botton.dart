import 'package:airplace_apps/models/theme.dart';
import 'package:flutter/material.dart';

class CostomBotton extends StatelessWidget {
  final title;
  final double width;
  final double marginBottom;
  final double marginTop;

  final Function() onPressed;
  const CostomBotton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.marginBottom = 0,
    this.marginTop = 0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: marginBottom,
        top: marginTop,
      ),
      height: 55,
      width: width,
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            title,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      ),
    );
  }
}
