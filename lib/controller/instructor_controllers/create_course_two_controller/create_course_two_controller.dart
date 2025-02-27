import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_courses_project/core/const/routes/app_routes_names.dart';

class CreateCourseTwoController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;
  late TabController curriculumTabController;
  RxString btnText = "Next".obs;
  Rx<TextEditingController> couponStartDate = TextEditingController().obs;
  Rx<TextEditingController> couponEndDate = TextEditingController().obs;

  RxString pageTitle =
      "Start creating your course \nand add your curriculum".obs;

  RxInt pageIndex = 0.obs;
  RxString contentGroupVal = "video".obs;
  RxString voucherGroupVal = "1".obs;

  RxString scheduleValue = "live".obs;
  RxString pricingValue = "pricing".obs;

  RxBool showLicture = false.obs;
  RxBool showStatus = false.obs;

  getDropDownValue(RxString groupVal, String val) {
    groupVal.value = val;
  }

  changePricingPageContent({
    required Widget price,
    required Widget promotion,
    required Widget voucher,
  }) {
    switch (pricingValue.value) {
      case "pricing":
        price;
        break;
      case "promotion":
        promotion;

        break;
      case "vouchers":
        voucher;
        break;
    }
  }

  baskToCourseOneScreen () {
    Get.offNamed(AppRoutesNames.instructorCreateCourseOne);
  }

  getVoucherValue(String value) {
    voucherGroupVal.value = value;
  }

  showLictureSection() {
    showLicture.value = !showLicture.value;
  }

  changePageTitle() {
    switch (pageIndex.value) {
      case 0:
        pageTitle.value =
            "Start creating your course \nand add your curriculum";
        break;
      case 1:
        pageTitle.value = "Schedule your classes";
        break;
      case 2:
        pageTitle.value = "Add your landing page";
        break;
      case 3:
        pageTitle.value = "Set your promotional \npricing";
        break;
      case 4:
        pageTitle.value = "Create your coupons";
        break;
    }
  }

  changeBtnText() {
    if (pageIndex.value == 4) {
      btnText.value = "Submit For Review";
    } else {
      btnText.value = "Next";
    }
  }

  toogleBtns(Widget singleBtn, Widget doubleBtn) {
    if (pageIndex.value > 1 && pageIndex.value < 4) {
      return doubleBtn;
    } else {
      return singleBtn;
    }
  }

  nextPage() {
    if (pageIndex.value < 4) {
      pageIndex.value++;
      tabController.animateTo(pageIndex.value);
    } else {
      // Get.offNamed(AppRoutesNames.instructorCreateCourseTwo);
    }
    changeBtnText();
    changePageTitle();
  }

  getContentValue(String value) {
    contentGroupVal.value = value;
  }

  Future<void> selectStartDate(BuildContext context) async {
    DateTime? selected = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050),
        initialDate: DateTime.now());
    couponStartDate.value.text = selected.toString().split(" ")[0];
    }

  Future<void> selectEndDate(BuildContext context) async {
    DateTime? selected = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2050),
        initialDate: DateTime.now());
    couponEndDate.value.text = selected.toString().split(" ")[0];
    }

  initControllers() {
    tabController = TabController(
        length: 5, vsync: this, animationDuration: Duration(milliseconds: 500));
    curriculumTabController = TabController(
        length: 3, vsync: this, animationDuration: Duration(milliseconds: 500));
  }

  @override
  void onInit() {
    initControllers();
    super.onInit();
  }
}