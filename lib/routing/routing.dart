// To navigate to the new screen we can use it like this,
//
// Get.to(() => NewScreen())


// To navigate to the new screen using name we can use it like this,
// Get.toNamed('profile')


// To close snackbars, dialogs, bottomsheets, or
// anything you would normally close with Navigator.pop(context);
// we can use it like this,
// Get.back()

// To navigate to the next screen and don’t want to go back
// // to the previous screen (for use in SplashScreens, login screens and etc.)
// // we can use it like this,
// Get.off(NewScreen())

// To navigate to the next screen and cancel all previous routes
// (useful in shopping carts apps , polls, and tests)
// we can use it like this,
// Get.offAll(NewScreen())