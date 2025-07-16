import 'package:bmi_calculator/config/constants/app_constants.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/widgets/bottomButton.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/widgets/card.dart';
import 'package:bmi_calculator/features/presentation/auth/result_page/viewModel/result_page_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ResultPageViewModel viewModel = Get.put(ResultPageViewModel());

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR', style: kAppBarTextStyle)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReuseableCard(
              color: kInActiveCardColor,
              cardChild: Center(
                child: Text('YOUR RESULT', style: kResultLabeTextStyle),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReuseableCard(
              color: kInActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.bmiResult.status, style: kWeightStatus),
                  Text(viewModel.bmiResult.bmi.round().toString(), style: kBMI),
                  Text(
                    viewModel.bmiResult.advice,
                    style: kAdvice,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            color: kBottomContainerColor,
            title: 'Re-Calculate',
            onPressed: () => viewModel.reCalculate(),
          ),
        ],
      ),
    );
  }
}
