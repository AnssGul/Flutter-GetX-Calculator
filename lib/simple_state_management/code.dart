// Simple State Management with GetX
// GetX makes state management easy with a widget
// called GetBuilder. This widget helps
// your UI react to changes in your app's variables and methods.




// import 'package:get/get.dart';
//
// class CounterController extends GetxController {
//   var counter = 0;
//   increment() {
//     counter++;
//     update();
//   }
// }



//
// GetBuilder<CounterController>(
// init: CounterController(),
// builder: (value) {
// return Text(
// '${value.counter}',
// style: Theme.of(context).textTheme.headline4,
// );
// },
// );

















// import 'package:get/get.dart';
//
// class CounterController extends GetxController {
//   // Create a variable to store the count
//   int count = 0;
//
//   // Method to increment the count
//   void increment() {
//     count++; // Increment the count
//     update(); // Notify GetBuilder to update the UI
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'counter_controller.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'GetX Example',
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   // Create an instance of the controller
//   final CounterController controller = Get.put(CounterController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetX Example'),
//       ),
//       body: Center(
//         // Use GetBuilder to update the Text widget when count changes
//         child: GetBuilder<CounterController>(
//           builder: (controller) {
//             return Text('Count: ${controller.count}');
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => controller.increment(), // Call increment method
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
