import 'dart:ffi';

import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            width: 300,
            height: 211,
            padding: EdgeInsets.all(defaultMargin),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/image_card.png',
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor.withOpacity(0.5),
                  blurRadius: 50,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
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
                            style: whiteStyleText.copyWith(fontWeight: light),
                          ),
                          Text(
                            state.user.name,
                            style: whiteStyleText.copyWith(
                                fontSize: 20, fontWeight: medium),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Pay',
                      style: whiteStyleText.copyWith(
                          fontSize: 16, fontWeight: medium),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 41,
                ),
                Text(
                  'Balance',
                  style: whiteStyleText.copyWith(fontWeight: light),
                ),
                Text(
                  'IDR 280.000.000',
                  style:
                      whiteStyleText.copyWith(fontSize: 26, fontWeight: medium),
                ),
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      });
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackStyleText.copyWith(fontSize: 32, fontWeight: semiBold),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyStyleText.copyWith(fontSize: 16, fontWeight: light),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          title: 'Start Fly Now',
          width: 220,
          margin: EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false);
          });
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subTitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}
