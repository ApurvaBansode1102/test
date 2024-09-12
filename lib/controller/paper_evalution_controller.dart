import 'package:get/get.dart';

class PaperEvaluationController extends GetxController {
  var evaluations = [
    'yash',
    'sunil',
    'shri',
    'sahil',
    'sanket',
    'swami',
    'sekhar',
    'vijay'
  ].obs;

  void onEvaluate(String name) {
    // Handle the evaluate action
    print('Evaluating $name');
  }

  void onView(String name) {
    // Handle the view action
    print('Viewing $name');
  }
}
