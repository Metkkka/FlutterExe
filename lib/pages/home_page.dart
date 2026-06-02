import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'package:metkaexeflutter/widget/hero_widget.dart';

String _decoration(int numberValue) {
  if (numberValue == 0) {
    return "Zero";
  } else if (numberValue > 0) {
    return "Positive";
  } else {
    return "Negative";
  }
}

class HomePage extends StatefulWidget {
  const HomePage(
      {super.key, required this.name}
      );

  final String name;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: numberSelectedNotifier,
      builder: (context, numberSelected, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          ),
        );
      },
    );
  }
}

