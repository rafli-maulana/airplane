import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/checkout_page.dart';
import 'package:airplane/widgets/custom_button.dart';
import 'package:airplane/widgets/seat_item.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackStyleText.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Row(
          children: [
            //NOTE: AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackStyleText,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackStyleText,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(
                left: 10,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icon_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackStyleText,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyStyleText.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyStyleText.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyStyleText.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyStyleText.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyStyleText.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Note: Seat 1
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyStyleText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            //Note: Seat 2
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyStyleText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            //Note: Seat 3
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyStyleText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //Note: Seat 4
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyStyleText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //Note: Seat 5
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyStyleText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            //Note: Your Seat
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: greyStyleText.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'A3, B3',
                    style: blackStyleText.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            //Note: Total
            Container(
              margin: EdgeInsets.only(
                top: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyStyleText.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 10.000',
                    style: purpleStyleText.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
        child: CustomButton(
            title: 'Continue to Checkout',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(),
                ),
              );
            }),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkoutButton(),
        ],
      ),
    );
  }
}
