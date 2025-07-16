class BMI {
  final double bmi;
  final String status;
  final String advice;

  BMI({required this.bmi, required this.status, required this.advice});

  String get bmiString =>
      bmi.toStringAsFixed(1); // convert number to double be fore calculate
}
