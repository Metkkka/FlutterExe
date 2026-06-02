//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:metkaexeflutter/data/notifiers.dart';
import 'package:metkaexeflutter/pages/welcome_page.dart';
import 'package:metkaexeflutter/views/widget_tree.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// String name = "metka";
// int number = 1;
// double dbl = 1.5;
// List<String> myList = ['metka' , 'metka', 'metka'];
// Map<String, int> myMap = {'String' : 0, 'String1' : 1};
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: .fromSeed(seedColor: Colors.black, brightness: Brightness.dark),
//       ),
//       home: const MyHomePage(title: 'Brink | POS')
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   void _incrementCounter() {
//     setState(() {
//
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(widget.title),
//         leading: Icon(
//             Icons.notification_add,
//             color: Colors.grey,
//         ),
//       ),
//       body: Center(
//         // child: Column(
//         //     children: [
//         //       Container(
//         //         height: 100,
//         //         width: double.infinity,
//         //         margin: EdgeInsets.only(left: 5, right: 5, top: 20),
//         //         decoration: BoxDecoration(
//         //           color: Colors.grey,
//         //           borderRadius: BorderRadius.circular(10)
//         //         ),
//         //         child: Column(
//         //           children: [
//         //             Text(
//         //                 "Today's Revenue"
//         //             ),
//         //             Text("10.000.000 €")
//         //           ],
//         //         ),
//         //       ),
//         //       Container(
//         //         height: 100,
//         //         width: double.infinity,
//         //         margin: EdgeInsets.only(left: 5, right: 5, top: 20),
//         //         decoration: BoxDecoration(
//         //             color: Colors.grey,
//         //             borderRadius: BorderRadius.circular(10)
//         //         ),
//         //         child: Column(
//         //           children: [
//         //             Text("This Months Revenue"),
//         //             Text("100.000.000 €")
//         //           ],
//         //         ),
//         //       ),
//         //     Image.network(
//         //         "https://orderly.mk/favicon/favicon.ico",
//         //       height: 100,
//         //       width: 100,
//         //     )
//         //     ],
//         // )
//         // child: Container(
//         //   padding: EdgeInsets.all(120),
//         //   decoration: BoxDecoration(
//         //     color: Colors.grey
//         //   ),
//         //   child: Stack(
//         //     children: [
//         //       Padding(
//         //         padding: const EdgeInsets.only(left: 50, right : 50, top : 0, bottom: 100),
//         //         child: Image.network(
//         //             "https://orderly.mk/favicon/favicon.ico",
//         //             fit: BoxFit.cover,
//         //
//         //         ),
//         //       ),
//         //       Container(
//         //         child: Text("data"),
//         //       )
//         //     ]
//         //   ),
//         // ),
//         child: Container(
//           decoration: BoxDecoration(
//             // color: Colors.green
//           ),
//           // child: ListTile(
//           //   tileColor: Colors.red, //TILE COLOR
//           //   leading: Icon(Icons.eighteen_up_rating), //START OF THE TILE
//           //   trailing: Text("data"), //END OF THE TILE
//           //   title: Text("METKA"), //VALUE THAT GOES AFTER THE LEADING THAT CAN BE STYLED
//           //   subtitle: Text("JASHARI"), //VALUE THAT GOES UNDER THE TITLE
//           //   dense: true,
//           //   isThreeLine: true,
//           //   onTap: () {
//           //     print("Clicked");
//           //   },
//           child: Wrap(
//             children: [
//               Container(
//                child: Text("metkametkametkametkametkametkametkametkametkametkametka")
//               ),
//               Container(
//                   child: Text("metkametkametkametkametkametkametkametkametkametkametka")
//               ),
//               Container(
//                   child: Text("metkametkametkametkametkametkametkametkametkametkametka")
//               ),
//               Container(
//                   child: Text("metkametkametkametkametkametkametkametkametkametkametka")
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

//
// void main(){
//   runApp(const Brink());
// }
//
// //StateLess
// //Material App
// //Scaffold
//
// class Brink extends StatelessWidget {
//   const Brink({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Brink | POS",
//       theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(
//               seedColor: Colors.green,
//               brightness: Brightness.dark
//           )
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Welcome Back."),
//           centerTitle: false,
//           // leading: Icon(Icons.eighteen_up_rating),
//           actions: [
//             Icon(Icons.eighteen_up_rating),
//           ],
//           backgroundColor: Colors.green,
//         ),
//         drawer: SafeArea(
//           child: Drawer(
//             child: Column(
//               children: [
//                 ListTile(
//                   title: Text("Log Out"),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {
//               print("Add Button pressed.");
//             },
//             child: Icon(Icons.add),
//         ),
//         bottomNavigationBar: NavigationBar(
//           selectedIndex: 1,
//             onDestinationSelected: (int value) {
//               print(value);
//             },
//             destinations: [
//               NavigationDestination(
//                   icon: Icon(Icons.home),
//                   label: "Home"
//               ),
//               NavigationDestination(
//                   icon: Icon(Icons.person),
//                   label: "Profile"
//               )
//             ],
//         ),
//       )
//     );
//   }
// }
//

void main() {
  runApp(const Brink());
}

String title = 'Brink | POS';

class Brink extends StatelessWidget {
  const Brink({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: isLightNotifier,
        builder: (context, isLightMode, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: title,
              theme: ThemeData(
                brightness: isLightMode ? Brightness.dark : Brightness.light
              ),
              home: WidgetTree(),
          );
        }
    );
  }
}