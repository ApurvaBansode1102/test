import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class FirstController extends GetxController{


  GlobalKey <FormState> loginkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
}