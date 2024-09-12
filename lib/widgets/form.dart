import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {

  String firstname = '';
  String lastname = '';
  String email    = '';
  String password = '';

  final _formKey = GlobalKey<FormState>();
  //----------------FUNCTION------------
  trysubmit(){
    final isvalid = _formKey.currentState!.validate();
    if(isvalid){
      _formKey.currentState!.save();
      submitform();
    } else{
      print('Error');
    }
  }
  submitform(){
    print('firstname');
    print('lastname');
    print('email');
    print('password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        margin:  const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your first name',
                      prefixIcon: Icon(Icons.person),
                    ),
                    key: const ValueKey('firstname'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'first name should not  be  Empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value) {
                      firstname = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your last name',
                      prefixIcon: Icon(Icons.person),
                    ),
                    key: const ValueKey('lastname'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'lastname should not be Empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value) {
                      lastname = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your  email',
                      prefixIcon: Icon(Icons.email),
                    ),
                    key: const ValueKey('email'),
                    validator: (value) {
                      if(value.toString().isEmpty){
                        return 'Email should not  be Empty';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value) {
                      email = value.toString();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.password),
                    ),
                    key: const ValueKey('password'),
                    validator: (value) {
                      if(value.toString().length<=5){
                        return 'minimum length of password should not  be 6';
                      }
                      else{
                        return null;
                      }
                    },
                    onSaved: (value) {
                      password = value.toString();
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                TextButton(onPressed: (){
                  trysubmit();
                },
                    child: const Text('Submit', style: TextStyle(fontSize: 18,),),
                    style: TextButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
