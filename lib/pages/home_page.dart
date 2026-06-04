import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/constants.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'package:metkaexeflutter/widget/hero_widget.dart';



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
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Card(
                  child: Padding(
                      padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(
                              "Basic Card that we are testing for FittedBox",
                              style: kTextStyle.titleTealTextStyle
                          ),
                        Text(
                            "Description of the basic Card",
                            style: kTextStyle.descriptionTealTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

