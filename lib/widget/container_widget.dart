import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/constants.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Card(
        margin: EdgeInsets.only(top: 10, bottom: 5),
        child: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: kTextStyle.titleTealTextStyle),
              Text(
                description,
                style: kTextStyle.descriptionTealTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
