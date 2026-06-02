import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: SingleChildScrollView(
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
                      decoration: InputDecoration(border: OutlineInputBorder()),
                      onChanged: (value) {
                        textFieldNotifier.value = value;
                      },
                      onEditingComplete: () => setState(() {}),
                    ),
                    Text(text),
                  ],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Text("Gender: "),
                DropdownButton(
                  value: menuItem,
                  items: [
                    DropdownMenuItem(value: "male", child: Text("Male")),
                    DropdownMenuItem(value: "female", child: Text("Female"))
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      menuItem = value;
                    });
                  },
                ),
              ],
            ),
            CheckboxListTile.adaptive(
              title: Text("New User"),
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
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              value: isSwitched,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Switch me"),
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print("Tapped");
              },
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
              ),
              child: Icon(Icons.add),
            ),
            FilledButton(
              onPressed: () {
                print("Clicked");
              },
              child: Icon(Icons.add),
            ),
            TextButton(
              onPressed: () {
                print("Clicked");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
