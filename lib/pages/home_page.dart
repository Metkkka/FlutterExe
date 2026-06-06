import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/constants.dart';
import 'package:metkaexeflutter/pages/welcome_page.dart';
import 'package:metkaexeflutter/widget/container_widget.dart';
import 'package:metkaexeflutter/widget/hero_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.name});

  final String name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.fixBug,
      KValue.cleanUI,
      KValue.keyConcepts
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: "Hello", nextPage: WelcomePage()),
            Column(
              children: List.generate(list.length, (index) {
                return ContainerWidget(
                  title: list.elementAt(index),
                  description: "The description of the dashboard",
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
