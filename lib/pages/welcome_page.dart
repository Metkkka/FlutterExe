import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:metkaexeflutter/pages/get_started_page.dart';
import 'package:metkaexeflutter/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/lottie/welcome.json"),
                SizedBox(height: 100),
                FilledButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return GetStartedPage();
                          }
                          )
                      );
                    },
                    style: FilledButton.styleFrom(
                      minimumSize: Size(double.infinity - 30, 40)
                    ),
                    child: Text("Get Started")
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }
                          )
                      );
                    },
                    child: Text("Log In")
                )
              ],
            ),
        ),
      ),
    );
  }
}
