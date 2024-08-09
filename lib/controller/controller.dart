import 'package:get/get.dart';

class CounterController extends GetxController {
  var sum = 0.obs;
  var a = 0.obs;
  var b = 0.obs;
  void add() {
    sum.value = a.value + b.value;
  }

  void subtract() {
    sum.value = a.value - b.value;
  }

  void multiply() {
    sum.value = a.value * b.value;
  }

  void reset() {
    a.value = 0;
    b.value = 0;
    sum.value = 0;
  }
}
