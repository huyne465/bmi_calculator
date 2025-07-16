import 'package:bmi_calculator/config/constants/app_constants.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/viewModel/input_pageViewModel.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/widgets/bottomButton.dart';
import 'package:bmi_calculator/features/presentation/auth/input_page/widgets/operatorButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../widgets/card.dart';
import '../widgets/icon_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inActiveCardColor;
  // Color femaleCardColor = inActiveCardColor;
  @override
  Widget build(BuildContext context) {
    final InputPageViewModel viewModel = Get.put(InputPageViewModel());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR', style: kAppBarTextStyle)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Obx(
                    //using obx to listen changes
                    () => ReuseableCard(
                      onPress: viewModel.selectMale,
                      color: viewModel.selectedGender.value == Gender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContentWidget(
                        cardLabel: 'MALE',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Obx(
                    () => ReuseableCard(
                      onPress: viewModel.selectFemale,
                      color: viewModel.selectedGender.value == Gender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContentWidget(
                        cardLabel: 'FEMALE',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReuseableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContentWidget(
                    cardLabel: 'HEIGHT',
                    icon: FontAwesomeIcons.ruler,
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          viewModel.height.value.toString(),
                          style: kNumberLabelStyle,
                        ),
                        Text('cm', style: kLabelCardTextStyle),
                      ],
                    ),
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: kActiveSliderColor,
                      inactiveTrackColor: kInactiveSliderColor,
                      overlayColor: kOverlaySliderColor,
                      thumbColor: kSliderThumbcolor,
                      thumbShape: RoundSliderThumbShape(
                        elevation: 0.8,
                        enabledThumbRadius: 15,
                      ),
                    ),
                    child: Obx(
                      () => Slider(
                        value: viewModel.height.value.toDouble(),
                        max: 220,
                        min: 120,
                        onChanged: viewModel.updateHeight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ReuseableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconContentWidget(
                          icon: FontAwesomeIcons.weightHanging,
                          cardLabel: 'WEIGHT',
                        ),
                        Obx(
                          () => Text(
                            viewModel.weight.value.toString(),
                            style: kNumberLabelStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OperateButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: viewModel.increaseWeight,
                            ),
                            OperateButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: viewModel.decreaseWeight,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ReuseableCard(
                    color: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconContentWidget(
                          icon: FontAwesomeIcons.person,
                          cardLabel: 'AGE',
                        ),
                        Obx(
                          () => Text(
                            viewModel.age.value.toString(),
                            style: kNumberLabelStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OperateButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: viewModel.increaseAge,
                            ),
                            OperateButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: viewModel.decreaseAge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onPressed: () => viewModel.toResultPage(),
            color: kBottomContainerColor,
            title: 'Calculate',
          ),
        ],
      ),
    );
  }
}
