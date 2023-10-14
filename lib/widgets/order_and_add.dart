import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cofi_application/theme.dart';

class orderAndAdd extends StatelessWidget {
  const orderAndAdd({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment
          .center, // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/Order Pack.png',
          width: 67,
        ),
        SizedBox(
          width: 13,
        ),
        GestureDetector(
          child: Container(
            width: 220,
            height: 55,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: 23, vertical: 14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: colorTheme),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'ADD TO BAG',
                  style: semiBoldText,
                ),
                Container(
                  height: 27,
                  width: 1,
                  color: Colors.white,
                ),
                Text(
                  '\$ 5.99',
                  style: semiBoldText,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
