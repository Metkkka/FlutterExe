import 'package:flutter/material.dart';
import 'package:flutter_adaptive_buttons/flutter_adaptive_buttons.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'dart:convert';

import '../domain/bored_api.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   bool? isChecked = false;
//   bool isSwitched = false;
//   double sliderValue = 0.0;
//   String? menuItem = "male";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Settings"),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           spacing: 10,
//           children: [
//             Text("Name:"),
//             ValueListenableBuilder(
//               valueListenable: textFieldNotifier,
//               builder: (context, text, child) {
//                 return Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(border: OutlineInputBorder()),
//                       onChanged: (value) {
//                         textFieldNotifier.value = value;
//                       },
//                       onEditingComplete: () => setState(() {}),
//                     ),
//                     Text(text),
//                   ],
//                 );
//               },
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               spacing: 20,
//               children: [
//                 Text("Gender: "),
//                 DropdownButton(
//                   value: menuItem,
//                   items: [
//                     DropdownMenuItem(value: "male", child: Text("Male")),
//                     DropdownMenuItem(value: "female", child: Text("Female"))
//                   ],
//                   onChanged: (String? value) {
//                     setState(() {
//                       menuItem = value;
//                     });
//                   },
//                 ),
//               ],
//             ),
//             CheckboxListTile.adaptive(
//               title: Text("New User"),
//               // tristate: true, //Used when there are 3 values for the checkbox(true, false, null)
//               value: isChecked,
//               activeColor: Colors.red,
//               checkColor: Colors.black,
//               controlAffinity: ListTileControlAffinity.leading,
//               onChanged: (bool? value) {
//                 setState(() {
//                   isChecked = value;
//                 });
//               },
//             ),
//             Switch(
//               value: isSwitched,
//               onChanged: (bool value) {
//                 setState(() {
//                   isSwitched = value;
//                 });
//               },
//             ),
//             SwitchListTile.adaptive(
//               value: isSwitched,
//               controlAffinity: ListTileControlAffinity.leading,
//               title: Text("Switch me"),
//               onChanged: (bool value) {
//                 setState(() {
//                   isSwitched = value;
//                 });
//               },
//             ),
//             Slider.adaptive(
//               value: sliderValue,
//               onChanged: (double value) {
//                 setState(() {
//                   sliderValue = value;
//                 });
//               },
//             ),
//             InkWell(
//               splashColor: Colors.teal,
//               onTap: () {
//                 print("Tapped");
//               },
//               child: Container(
//                 height: 200,
//                 width: double.infinity,
//                 color: Colors.black,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(
//                         duration: Duration(seconds: 5),
//                         content: Text("SnackBar"),
//                         behavior: SnackBarBehavior.floating,
//                     )
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.black,
//               ),
//               child: Text("Show snackbar"),
//             ),
//             Divider(
//               color: Colors.teal,
//               thickness: 2,
//             ),
//             FilledButton(
//               onPressed: () {
//                 showDialog(
//                     context: context,
//                     builder: (context) {
//                       return AlertDialog.adaptive(
//                         title: Text("Alert Title"),
//                         content: Text("Alert Test"),
//                         actions: [
//                           AdaptiveElevatedButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               child:
//                               Text(
//                                   "Close",
//                                   style: TextStyle(
//                                   color: Colors.white
//                               ),
//                               )
//                           )
//                         ],
//                       );
//                     }
//                 );
//               },
//               child: Text("Alert Test")
//             ),
//             TextButton(
//               onPressed: () {
//                 print("Clicked");
//               },
//               child: Icon(Icons.add),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {

    var url = Uri.https('bored-api.appbrewery.com', '/random');

    var response = await http.get(url);
    int statusCode = response.statusCode;

    if(statusCode == 200) {
      var jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;
      var boredApi = BoredApi.fromJson(jsonResponse);
      print(boredApi.activity);
    } else {
      print("Fetch failed with status code: $statusCode");
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
