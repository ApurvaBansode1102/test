import 'package:flutter/material.dart';
import 'package:thirty_widgets/controller/first_controller.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  FirstController firstController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: firstController.loginkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text('Create Account', style: TextStyle(color:Colors.indigo, fontSize: 20),),
                  const Text('Create a new account', style: TextStyle(color:Colors.grey,fontSize: 15),),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "NAME",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person,color: Colors.blue,),
                        hintText: 'Enter your name',
                      ),
                        validator: (value){
                        if(value!.isEmpty)
                          {
                            return "Please enter your name";
                          }
                        else{
                          return null;
                        }
                        }
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "E-MAIL",
                        border: OutlineInputBorder(),

                        prefixIcon: Icon(Icons.email,color: Colors.blue,),
                        hintText: 'Enter your e-mail',
                      ),
                        validator: (value){
                         final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0!#$%&'*+-/=?^_`{|}~]+@+gmail.com+");
                          if(value!.isEmpty)
                          {
                            return "Please enter your e-mail";
                          }else if(!regex.hasMatch(value)){
                            return "please enter valid email";
                          }
                          return null;

                        }
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: "PHONE",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_android,color: Colors.blue,),
                        hintText: 'Enter your number',
                      ),
                        validator: (value) {
                       final RegExp phoneRegExp = RegExp(r'^\+?[0-9]{10,15}$');
                       if (value!.isEmpty) {
                       return 'Please enter a phone number';
                       } else if (!phoneRegExp.hasMatch(value)) {
                        return 'Please enter a valid phone number';
                        }
                        return null;
                        }
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "PASSWORD",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock,color: Colors.blue,),
                          hintText: 'Enter your password',
                        ),
                          // validator: (value){
                          // if (value == null || value.isEmpty) {
                          //   return 'Password is required';
                          //    } else if (value.length < 8) {
                          //    return 'Password must be at least 8 characters long';
                          //     } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        // return 'Password must contain at least one uppercase letter';
                        //              } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                        //    return 'Password must contain at least one lowercase letter';
                        //                 } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                        //             return 'Password must contain at least one digit';
                        //      } return null;
                        //         }
                   ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 10)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: "CONFIRM PASSWORD",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person,color: Colors.blue,),
                        hintText: 'Enter your confirm password',
                      ),
            
                        // validator: (value){
                        //   if (value == null || value.isEmpty) {
                        //     return 'Password is required';
                        //   } else if (value.length < 8) {
                        //     return 'Password must be at least 8 characters long';
                        //   } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                        //     return 'Password must contain at least one uppercase letter';
                        //   } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                        //     return 'Password must contain at least one lowercase letter';
                        //   } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                        //     return 'Password must contain at least one digit';
                        //   } return null;
                        // }
            
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  Center(
                    child: ElevatedButton(onPressed: (){
            
                      if (firstController.loginkey.currentState!.validate()){
                        signup(String email, String password) async {
                          try {
                            UserCredential userCredential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(email: email, password: password);
                            print('/////// Success ////////');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        }

                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Create an account'))
                        );
                      }
            
                    },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                      ),
                      child: const Text('CREATE ACCOUNT'),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have a account?', style: TextStyle(fontSize: 15),),
                      Text('Login',style: TextStyle(color: Colors.indigo, fontSize: 15),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
