import 'package:get/get.dart';

class CapacitySelectController {
  RxInt selectdCapacity = 1.obs;

  void capacitySelection(int value) {
    selectdCapacity(value);
  }
}
