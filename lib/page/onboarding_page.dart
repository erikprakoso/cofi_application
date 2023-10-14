import 'package:cofi_application/theme.dart';
import 'package:flutter/material.dart';
import 'second_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/BG.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: 509),
              Center(
                child: Text(
                  'Sweet &\nNaise Coffee',
                  textAlign: TextAlign.center,
                  style: boldText.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Naise Coffee can change the atmosphere in the morning',
                textAlign: TextAlign.center,
                style: regularText.copyWith(fontSize: 12),
              ),
              SizedBox(height: 60),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 58),
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 7,
                    primary: colorTheme,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              secondPage()),
                    );
                  },
                  child: Text(
                    'ORDER NOW',
                    style: semiBoldText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
