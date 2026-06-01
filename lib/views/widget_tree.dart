import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'package:metkaexeflutter/views/pages/home_page.dart';
import 'package:metkaexeflutter/views/pages/profile_page.dart';

import '../widget/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

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
                actions: [
                  IconButton(
                      onPressed: () {
                        isLightNotifier.value = !isLightNotifier.value;
                      },
                      icon: ValueListenableBuilder(
                          valueListenable: isLightNotifier,
                          builder: (context, isLight, child) {
                            if(isLight) {
                              print(true);
                              return Icon(Icons.dark_mode);
                            } else {
                              print(false);
                              return Icon(Icons.light_mode);
                            }
                          }
                      )
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
