import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:lottie/lottie.dart';
import 'package:metkaexeflutter/views/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var log = Logger();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = "123";
  String password = "456";

  @override
  void initState() { 
    //WHEN STARTING THE PAGE
    //RUNS BEFORE BUILD
    super.initState();
  }

  @override
  void dispose() {
    //WHEN CLOSING THE PAGE
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: LayoutBuilder(
                builder: (context, constraints) {
                  return FractionallySizedBox(
                    widthFactor: widthScreen > 500 ? 0.5 : 1.0,
                    child: Column(
                      children: [
                        Lottie.asset('assets/lottie/home.json', height: 400),
                        TextField(
                          controller: emailController,
                          decoration: InputDecoration(
                              hint: Text("Email"),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          onChanged: (value) {

                          },
                          onEditingComplete: () {
                            setState(() {

                            });
                          },
                        ),
                        SizedBox(height: 10),
                        TextField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              hint: Text("Password"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)
                              )),
                          onChanged: (value) {

                          },
                          onEditingComplete: () {
                            setState(() {

                            });
                          },
                        ),
                        FilledButton(
                            onPressed: () {
                              onLoginPressed();
                            },
                            child: Text("Log In")
                        )
                      ],
                    ),
                  );
                }
            )
          ),
        ),
      ),
    );
  }

  void onLoginPressed() {
    if(email == emailController.text && password == passwordController.text) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) {
                return WidgetTree();
              }
          ),
          (route) => false
      );
    } else {

    }
  }
}