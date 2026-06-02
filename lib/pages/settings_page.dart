import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  bool onOffNotif = false;
  bool onOffSound = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        // automaticallyImplyLeading: false, //Removes '<' that goes on the previous page.
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.5),
            child: Text(
              "Account",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          ListTile(
            title: Text("Profile"),
            subtitle: Text("Edit your name and photo"),
            leading : Icon(Icons.person),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.5),
          ),
          ListTile(
            title: Text("Change Password"),
            leading : Icon(Icons.lock),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.5),
            child: Text(
              "Notifications",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          ListTile(
            title: Text("Push Notifications"),
            subtitle: Text("Receive order alerts"),
            trailing: Switch(
                value: onOffNotif,
                onChanged: (bool switchValue) {
                  setState(() {
                    onOffNotif = switchValue;
                  });
                }
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.5),
          ),
          ListTile(
            title: Text("Sound"),
            trailing: Switch(
            value: onOffSound,
            onChanged: (bool switchValue) {
              setState(() {
                onOffSound = switchValue;
              });
            }
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.5),
            child: Text(
              "About",
              style: TextStyle(color: Colors.purple),
            ),
          ),
          ListTile(
            title: Text("App Version"),
            subtitle: Text("1.0.0 (build 42)"),
            leading : Icon(Icons.info),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.5)
          ),
          ListTile(
            title: Text("Log Out"),
            leading: Icon(Icons.logout),
            iconColor: Colors.red,
            textColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
                side: BorderSide(
                    color: Colors.grey
                )
            ),
          )
        ],
      ),
    );
  }
}
