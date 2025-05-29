import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:samsung_proiver_app/screen/counter_display.dart';


// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return ChangeNotifierProvider(
//         create: (context) => CountProvider(),
//       child: MaterialApp(
//           title: 'Flutter Demo',
//
//           home:  ProviderDemo()
//       ),
//
//     );
//   }
// }




  void main() {
    runApp(  // <-- Add this missing runApp()
      ProviderScope(
        child: MyApp(),
      ),
    );
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        title: 'Flutter Demo',

        home:  Placeholder()
    );

  }
}



