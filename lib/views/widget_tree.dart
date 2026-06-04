import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'package:metkaexeflutter/pages/home_page.dart';
import 'package:metkaexeflutter/pages/profile_page.dart';
import 'package:metkaexeflutter/pages/settings_page.dart';
import 'package:metkaexeflutter/pages/welcome_page.dart';

import '../widget/navbar_widget.dart';

List<Widget> pages = [HomePage(name: "Metka"), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return Scaffold(
              appBar: AppBar(
                title: Text("Brink | POS"),
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                actions: [
                  IconButton(
                      onPressed: () {
                        isLightNotifier.value = !isLightNotifier.value;
                      },
                      icon: ValueListenableBuilder(
                          valueListenable: isLightNotifier,
                          builder: (context, isLight, child) {
                            if(isLight) {
                              return Icon(Icons.dark_mode);
                            } else {
                              return Icon(Icons.light_mode);
                            }
                          }
                      )
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return SettingsPage();
                        }
                        )
                        );
                      },
                      icon: Icon(Icons.settings)
                  )
                ],
              ),
              body: pages[selectedPage],
              bottomNavigationBar: NavbarWidget()
          );
        }
    );
        }
}
