import 'package:airplace_apps/models/theme.dart';
import 'package:airplace_apps/ui/widget/costtom_botton.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/cart.png'),
            fit: BoxFit.cover,
          ),
          boxShadow: [
            BoxShadow(
              color: kprimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: whiteTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                        Text(
                          'Ade Nehemia Setiawan',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: medium,
                          ),
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/logo_airplane.png',
                        width: 24,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'IDR',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 26,
                        ),
                      ),
                      Text(
                        ' 280.000.000',
                        style: whiteTextStyle.copyWith(
                          fontWeight: medium,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 80,
              bottom: 10,
            ),
            child: Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 32,
              ),
            ),
          ),
          Text(
            'We give you early credit so that \nyou can buy a flight ticket',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      );
    }

    Widget buttonStart() {
      return CostomBotton(
        title: 'Start Fly Now',
        marginTop: 50,
        width: 220,
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            content(),
            buttonStart(),
          ],
        ),
      ),
    );
  }
}
