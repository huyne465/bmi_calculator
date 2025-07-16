import 'package:bmi_calculator/config/routes/app_routes.dart';
import 'package:bmi_calculator/features/data/models/bmi.dart';
import 'package:get/get.dart';

class ResultPageViewModel extends GetxController {
  late BMI bmiResult;

  @override
  void onInit() {
    super.onInit();
    bmiResult = Get.arguments;
  }

  void reCalculate() {
    Get.offAllNamed(AppRoutes.home);
  }
}
