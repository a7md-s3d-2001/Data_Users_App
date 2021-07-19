import 'package:flutter/material.dart';
import 'package:login_register/shared/components/components.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  var userNameController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forget Password',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Please fill below the required data to be one of the winners',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultInputField(
                label: 'User name',
                controller: userNameController,
                prefixIcon: Icons.person,
                type: TextInputType.text,
                validate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'user name shoud\'t be empty';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              defaultButton(
                function: () {
                  if (formKey.currentState!.validate()){

                  }
                },
                text: 'Rest password',
              ),
              SizedBox(
                height: 20.0,
              ),
              defaultButton(
                background: Colors.white,
                colorTextButton: Colors.blue,
                function: () {
                  if (formKey.currentState!.validate()){

                  }
                },
                text: 'Continue with facebook',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
