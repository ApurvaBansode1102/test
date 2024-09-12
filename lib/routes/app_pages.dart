import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:thirty_widgets/routes/routes.dart';

import '../bindings/first_binding.dart';
import '../widgets/first_screen.dart';


class AppPages{

  static const INITIAL_ROUTE = Routes.FIRST_SCREEN;

  static final route = [
    GetPage(
      name: Routes.FIRST_SCREEN,
      page: ()=> FirstScreen(),
      binding: FirstBinding()
    ),

  ];
}