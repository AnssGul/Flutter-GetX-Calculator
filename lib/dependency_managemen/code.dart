// Get.put() is the most common way of inserting a
// dependency it loads immediately and can be used
// directly. we can use it like this,
// Controller controller = Get.put(Controller());

// Get.lazyPut() to lazily load a dependency so
// that it will be instantiated only when
// is used. we can use it like this,
// Get.lazyPut<Controller>(() => Controller());


// In GetX, Get.lazyPut() is used to lazily load dependencies,
// meaning they are created only when they are first needed. However,
// once a dependency is created, it remains in memory even if the route
// that used it is removed. If you want to reload the
// dependency each time the route is recreated, you can use the fenix property.
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'counter_controller.dart';

// class SecondScreen extends StatelessWidget {
//   // Lazily load the CounterController with fenix set to true
//   final CounterController controller = Get.lazyPut(() => CounterController(), fenix: true);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Second Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetX<CounterController>(
//               builder: (controller) {
//                 return Text('Count: ${controller.count}');
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => controller.increment(),
//               child: Text('Increment'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => Get.back(),
//         child: Icon(Icons.arrow_back),
//       ),
//     );
//   }
// }
// import 'package:get/get.dart';
//
// class CounterController extends GetxController {
//   var count = 0.obs;
//
//   void increment() {
//     count++;
//   }
//
//   @override
//   void onInit() {
//     super.onInit();
//     print("CounterController created");
//   }
//
//   @override
//   void onClose() {
//     super.onClose();
//     print("CounterController disposed");
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'counter_controller.dart';
// import 'second_screen.dart';
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
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('GetX Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () => Get.to(SecondScreen()),
//           child: Text('Go to Second Screen'),
//         ),
//       ),
//     );
//   }
// }



// Get.putAsync() is used when you need to register an instance that requires
// asynchronous initialization. This is especially useful for services or controllers
// that need to perform some asynchronous operations,
//     like fetching data from an API or reading from a database,
//     before they are ready to be used
import 'package:get/get.dart';

// class MyService extends GetxService {
//   // Simulate an async initialization
//   Future<MyService> init() async {
//     await Future.delayed(Duration(seconds: 2));
//     print("MyService initialized");
//     return this;
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'my_service.dart';
//
// void main() async {
//   // Ensure all bindings are initialized
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // Initialize the service asynchronously
//   await Get.putAsync(() => MyService().init());
//
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Get.putAsync Example',
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   // Retrieve the service instance
//   final MyService myService = Get.find<MyService>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Get.putAsync Example'),
//       ),
//       body: Center(
//         child: Text('Service is ready to use!'),
//       ),
//     );
//   }
// }

// When we need to maintain that instance alive
// in our entire app we can set true to optional permanent property.

// Get.putAsync<Controller>( () async => await Controller(), permanent: true );

// Get.create() used when we have to create a new
// instance of the dependency every time. we can use it like this,


//
// Internationalization
// Internationalization is an activity that developer, perform by utilizing system
// provided APIs to make app as good in Arabic or Chinese as it is in English.
// GetX provides facility of translation as a simple key-value dictionary map. to create our own custom class
// we have to extend our calss with Translations Class. we can use it like this,

// class Messages extends Translations {
//   @override
//   Map<String, Map<String, String>> get keys =>
//       {
//         'en_US': {
//           'hello': 'Hello World',
//         },
//         'de_DE': {
//           'hello': 'Hallo Welt',
//         }
//       };
// }



// to use it we have to just append .tr to the specified key and it will
// be translated, using the current value of
// Get.locale and Get.fallbackLocale passed in parameters of GetMaterialApp.
// Text('hello'.tr);
//

// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
//
// void main() {
//   runApp(MyApp());
//
// }
//
// class MyApp extends StatelessWidget {
// }
// @override
// Widget build(BuildContext context) {
//   return MaterialApp(
//     title: 'Flutter Internationalization',
//     localizationsDelegates: [
//       GlobalMaterialLocalizations.delegate,
//       GlobalWidgetsLocalizations.delegate,
//       GlobalCupertinoLocalizations.delegate,
//     ],
//     supportedLocales: [
//       const Locale('en', ''), // English
//       const Locale('es', ''), // Spanish
//       const Locale('ar', ''), // Arabic
//       // Add other supported locales here
//     ],
//     home: HomeScreen(),
//   );
// }


//
// Internationalization (often abbreviated as i18n) is the process
// of designing and developing your application so that it can be easily adapted to various languages and regions without requiring engineering changes. It involves using system-provided APIs and best practices to support multiple languages and cultural norms.
//
// Key Aspects of Internationalization
// Text and Strings:

// 3. Create Localization Files
// Create JSON or ARB (Application Resource Bundle)
// files for each language you want to support. Typically,
// these files are stored in a lib/l10n directory.
//
// Example of lib/Translations/intl_en.arb:
// {
// "title": "Hello World",
// "welcomeMessage": "Welcome to the internationalized app!"
// }
// Example of lib/Translations/intl_es.arb
// {
// "title": "Hola Mundo",
// "welcomeMessage": "¡Bienvenido a la aplicación internacionalizada!"
// }
// according to getx
// dependencies:
// flutter:
// sdk: flutter
// get: ^4.6.5
// flutter_localizations:
// sdk: flutter
//
// // import 'package:get/get.dart';

// class Translations extends Translations {
//   @override
//   Map<String, Map<String, String>> get keys => {
//     'en_US': {
//       'hello': 'Hello',
//       'welcome': 'Welcome to our app!',
//     },
//     'es_ES': {
//       'hello': 'Hola',
//       'welcome': '¡Bienvenido a nuestra aplicación!',
//     },
//   };
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'translations.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'GetX Internationalization',
//       locale: Get.deviceLocale, // Set the locale based on the device settings
//       fallbackLocale: Locale('en', 'US'), // Fallback locale if locale is not found
//       translations: Translations(), // Provide the translations
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('home'.tr), // Use GetX's `tr` method for translations
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('hello'.tr), // Translate the key 'hello'
//             SizedBox(height: 20),
//             Text('welcome'.tr), // Translate the key 'welcome'
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Change locale to Spanish
//                 Get.updateLocale(Locale('es', 'ES'));
//               },
//               child: Text('Change to Spanish'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// Change Theme
// While we are using GetX we don’t need to use any
// higher level widget than
// “GetMaterialApp” widget and also we don’t need
// to use “ThemeProvider” widget for changing theme.
// Get.changeTheme(ThemeData.dark());
// Switching the Theme from light to dark or dark to light we can use something like this,

// Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());