import 'package:bmi_calculator/config/routes/app_routes.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/views/input_page.dart';
import 'package:bmi_calculator/features/presentation/auth/result_page/views/result_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppPages {
  static const init = AppRoutes.home;

  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => InputPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.result,
      page: () => ResultPage(),
      transition: Transition.cupertino,
    ),
  ];
}
