import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cofi_application/theme.dart';

class comboMenu extends StatelessWidget {
  const comboMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 15),
      height: 80,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Row(children: [
        Image.asset(
          'assets/images/Pict Food.png',
          width: 49,
          height: 28,
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CROISSANT',
              style: semiBoldText.copyWith(color: Colors.black),
            ),
            Image.asset(
              'assets/images/Rattings.png',
              width: 95,
              height: 18,
            )
          ],
        ),
        SizedBox(
          width: 106,
        ),
        Image.asset(
          'assets/images/Button Add.png',
          width: 24,
        )
      ]),
    );
  }
}
