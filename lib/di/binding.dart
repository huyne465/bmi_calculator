import 'package:bmi_calculator/features/presentation/auth/input_page/viewModel/input_pageViewModel.dart';
import 'package:bmi_calculator/features/presentation/auth/result_page/viewModel/result_page_viewModel.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InputPageViewModel>(() => InputPageViewModel());
    Get.lazyPut<ResultPageViewModel>(() => ResultPageViewModel());
  }
}
