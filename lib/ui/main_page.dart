import 'package:airplace_apps/models/theme.dart';
import 'package:airplace_apps/ui/pages/home_page.dart';
import 'package:airplace_apps/ui/widget/costoms_botton_navigation.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent() {
      return HomePage();
    }

    Widget costomBottomNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            right: 24,
            left: 24,
          ),
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: kwhitehColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ItemBottonsNavigation(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              ItemBottonsNavigation(
                imageUrl: 'assets/icon_booking.png',
              ),
              ItemBottonsNavigation(
                imageUrl: 'assets/icon_cart.png',
              ),
              ItemBottonsNavigation(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kwhitehColor,
      body: Stack(
        children: [
          buildContent(),
          costomBottomNav(),
        ],
      ),
    );
  }
}
