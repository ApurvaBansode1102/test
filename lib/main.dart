import 'package:flutter/material.dart';
import 'package:thirty_widgets/routes/app_pages.dart';
import 'package:thirty_widgets/widgets/clone_2.dart';
import 'package:thirty_widgets/widgets/date_picker.dart';
import 'package:thirty_widgets/widgets/date_time.dart';
import 'package:thirty_widgets/widgets/day24.dart';
import 'package:thirty_widgets/widgets/first_screen.dart';
import 'package:thirty_widgets/widgets/image_widget.dart';
import 'package:thirty_widgets/widgets/rowscols.dart';
import 'package:thirty_widgets/widgets/snack.dart';
import 'package:thirty_widgets/widgets/stack.dart';
import 'package:thirty_widgets/widgets/ui_clone.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 30 Widgets',
       theme: ThemeData(
      // brightness: Brightness.dark,
      primaryColor: Colors.orange
    ),
      getPages: AppPages.route,
      initialRoute: AppPages.INITIAL_ROUTE,

    );
  }
}
