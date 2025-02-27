import 'package:get/get.dart';

class InstructorKnowledgeController extends GetxController {
  RxString groupValueOne = "".obs;
  RxString groupValueTwo = "".obs;
  RxString groupValueThree = "".obs;

  changeValue(RxString initVal, String val) {
    initVal.value = val;
  }
}
