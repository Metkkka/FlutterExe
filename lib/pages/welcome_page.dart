import 'package:flutter/material.dart';
import 'package:metkaexeflutter/pages/login_page.dart';
import 'package:metkaexeflutter/views/widget_tree.dart';
import 'package:metkaexeflutter/widget/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HeroWidget(title: "Welcome"),
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
    );
  }
}
