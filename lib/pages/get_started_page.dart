import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:metkaexeflutter/data/constants.dart';
import 'package:metkaexeflutter/pages/login_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Lottie.asset('assets/lottie/eee.json', height: 400),
                SizedBox(height: 10),
                Text(
                    "Metka the goat is learning flutter finally.",
                    textAlign: TextAlign.center,
                    style: kTextStyle.descriptionTealTextStyle,
                ),
                SizedBox(height: 10),
                FilledButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              }
                          )
                      );
                    },
                    child: Text("Next")
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}