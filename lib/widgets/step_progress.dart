
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StepProgress extends StatelessWidget {
  final int currentStep;

  StepProgress({Key? key, this.currentStep = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: StepProgressIndicator(
        roundedEdges: const Radius.circular(10),
        totalSteps: 10,
        currentStep: currentStep,
        size: 7,
        selectedColor: Colors.blue,
        unselectedColor: Colors.grey,
      ),
    );
  }
}
