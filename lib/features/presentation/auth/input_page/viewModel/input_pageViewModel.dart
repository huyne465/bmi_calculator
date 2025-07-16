import 'package:bmi_calculator/config/routes/app_routes.dart';
import 'package:bmi_calculator/features/data/models/bmi.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

enum Gender { male, female }

class InputPageViewModel extends GetxController {
  var selectedGender = Rxn<Gender>();
  var height = 180.obs;
  var weight = 60.obs;
  var age = 16.obs;

  void selectMale() {
    selectedGender.value = Gender.male;
  }

  void selectFemale() {
    selectedGender.value = Gender.female;
  }

  void increaseWeight() {
    weight.value++;
  }

  void decreaseWeight() {
    if (weight.value > 1) {
      weight.value--;
    }
  }

  void increaseAge() {
    age.value++;
  }

  void decreaseAge() {
    if (age.value > 1) {
      age.value--;
    }
  }

  void updateHeight(double newHeight) {
    height.value = newHeight.round();
  }

  void toResultPage() {
    // ignore: deprecated_member_use
    if (selectedGender.value.isNull) {
      Get.snackbar(
        'Error',
        'You should select your gender',
        duration: Duration(seconds: 2),
      );
    } else {
      Get.closeAllSnackbars();
      BMI result = calculateBMI();
      Get.toNamed(AppRoutes.result, arguments: result);
    }
  }

  BMI calculateBMI() {
    String status;
    String advice;
    double heightInMeters = height.value / 100;
    double bmi = weight.value / (heightInMeters * heightInMeters);

    if (bmi >= 25) {
      status = 'OVERWEIGHT';
      advice =
          'You have a higher than normal body weight. Try to exercise more and maintain a balanced diet.';
    } else if (bmi > 18.5) {
      status = 'NORMAL';
      advice =
          'You have a normal body weight. Good job! Keep maintaining your healthy lifestyle.';
    } else {
      status = 'UNDERWEIGHT';
      advice =
          'You have a lower than normal body weight. You can eat a bit more and consider strength training.';
    }
    return BMI(bmi: bmi, status: status, advice: advice);
  }
}
