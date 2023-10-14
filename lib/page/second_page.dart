import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cofi_application/theme.dart';
import 'package:cofi_application/widgets/combo.dart';
import 'package:cofi_application/widgets/order_and_add.dart';
import 'package:cofi_application/widgets/size.dart';

class secondPage extends StatelessWidget {
  const secondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD1E1E0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/Right.png',
                      width: 24,
                    ),
                  ),
                  Image.asset(
                    'assets/images/more.png',
                    width: 24,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Image.asset(
                  'assets/images/caramel.png',
                  width: 192,
                  height: 195,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Caramel Macchiato',
                      style: semiBoldText.copyWith(
                          fontSize: 24, color: colorTheme),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
                      style: regularText.copyWith(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Size',
                style: semiBoldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 12,
              ),
              sizeCup(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Combo',
                style: semiBoldText.copyWith(fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 12,
              ),
              comboMenu(),
              SizedBox(
                height: 45,
              ),
              orderAndAdd(),
              SizedBox(
                height: 30,
              )
            ]),
          ),
        ),
      ),
    );
  }
}
