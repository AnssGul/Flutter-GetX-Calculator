import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:get/utils.dart';
import 'package:getx_practice/controller/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx',
      home: HomeScreen(),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text(
//             "Stylist",
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 hintText: "Search...",
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: const BorderSide(color: Colors.grey),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   crossAxisSpacing: 16,
//                   mainAxisExtent: 16,
//                   childAspectRatio: 3 / 2,
//                 ),
//                 itemCount: 6,
//                 itemBuilder: (context, index) {
//                   return Card(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15.0),
//                     ),
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.asset(
//                               "asset\imgs\Rectangle.png",
//                               height: 200,
//                               fit: BoxFit.cover,
//                               width: double.infinity,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "My Name",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "address:naajshzashjk",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Drawer(
//                           child: Column(
//                             children: [
//                               Text("ax"),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final CounterController controller = Get.put(CounterController());
  final TextEditingController aController = TextEditingController();
  final TextEditingController bController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Count",
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue)),
                child: TextField(
                  controller: aController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Enter value for a",
                    labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      controller.a.value = int.tryParse(value) ?? 0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue)),
                child: TextField(
                  controller: bController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: "Enter a value for b",
                    labelStyle: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) =>
                      controller.b.value = int.tryParse(value) ?? 0,
                ),
              ),
            ),
            Obx(() => Text(
                  "Results:${controller.sum}",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  controller.multiply();
                  aController.clear();
                  bController.clear();
                },
                child: Text(
                  "Multiply",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  controller.subtract();
                  aController.clear();
                  bController.clear();
                },
                child: Text(
                  "Subtract",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  controller.add();
                  aController.clear();
                  bController.clear();
                },
                child: Text(
                  "add",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
            ElevatedButton(
                onPressed: () {
                  controller.reset();
                  aController.clear();
                  bController.clear();
                },
                child: Text(
                  "reset",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
