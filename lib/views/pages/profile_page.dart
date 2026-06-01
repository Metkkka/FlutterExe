import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        height: 300,
        child: Column(
          spacing: 10,
          children: [
            Text("Name:"),
            ValueListenableBuilder(
                valueListenable: textFieldNotifier,
                builder: (context, text, child) {
                  return Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder()
                        ),
                        onChanged: (value) {
                          textFieldNotifier.value = value;
                        },
                      ),
                      Text(text)
                    ],
                  );
                }
            ),
            CheckboxListTile(
                title: Text("New User?"),
                // tristate: true, //Used when there are 3 values for the checkbox(true, false, null)
                value: isChecked,
                activeColor: Colors.red,
                checkColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
            )
          ],
        ),
      ),
    );
  }
}