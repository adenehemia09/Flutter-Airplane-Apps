import 'dart:async';

import 'package:airplace_apps/models/theme.dart';
import 'package:airplace_apps/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';

class SplachPage extends StatefulWidget {
  const SplachPage({Key? key}) : super(key: key);

  @override
  _SplachPageState createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GetStartedPage(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/logo_airplane.png',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'AIRPLANE',
                style: whiteTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 30,
                  letterSpacing: 10,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kprimaryColor,
      body: content(),
    );
  }
}
