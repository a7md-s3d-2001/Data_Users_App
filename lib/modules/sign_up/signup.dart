import 'package:flutter/material.dart';
import 'package:login_register/modules/sign_in/signin.dart';
import 'package:login_register/modules/terms_and_conditions/terms_and_conditions.dart';
import 'package:login_register/shared/components/components.dart';
import 'package:page_transition/page_transition.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var fullNameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool visibleText = true;
  bool _checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
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
                              'Sign Up',
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
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40.0,),
                  defaultInputField(
                    label: 'Full Name',
                    prefixIcon: Icons.person,
                    controller: fullNameController,
                    type: TextInputType.name,
                    validate: (value){
                      if (value == null || value.isEmpty) {
                        return 'full name must be not null';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  defaultInputField(
                    label: 'Email...',
                    prefixIcon: Icons.email,
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    validate: (value){
                      if (value == null || value.isEmpty){
                        return 'email must be not empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  defaultInputField(
                    label: 'Phone...',
                    prefixIcon: Icons.phone,
                    controller: phoneController,
                    type: TextInputType.phone,
                    validate: (value){
                      if (value == null || value.isEmpty) {
                        return 'phone must be not empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  defaultInputField(
                    label: 'Password',
                    prefixIcon: Icons.lock,
                    suffixIcon: visibleText? Icons.visibility : Icons.visibility_off,
                    funSuffixIcon: (){
                      setState(() {
                        visibleText = !visibleText;
                      });
                    },
                    isPassword: visibleText,
                    controller: passwordController,
                    type: TextInputType.visiblePassword,
                    validate: (value){
                      if (value == null || value.isEmpty) {
                        return 'password must be not empty';
                      } else if (passwordController.text.length < 8) {
                        return 'password must > 8 letter';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0,),
                  defaultInputField(
                    label: 'Confirm password',
                    prefixIcon: Icons.lock,
                    suffixIcon: visibleText? Icons.visibility : Icons.visibility_off,
                    funSuffixIcon: (){
                      setState(() {
                        visibleText = !visibleText;
                      });
                    },
                    isPassword: visibleText,
                    controller: confirmPasswordController,
                    type: TextInputType.visiblePassword,
                    validate: (value){
                      if (value == null || value.isEmpty) {
                        return 'password must be not empty';
                      } else if (passwordController.text != confirmPasswordController.text) {
                        return 'passwords not match';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        },
                        shape: CircleBorder(),
                      ),
                      Expanded(child: Text('By clicking sign up you agreed to our')),
                      TextButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: TermsAndConditions(),
                            ),
                          );
                        },
                        child: Text('Terms & Conditions'),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  defaultButton(text: 'Sing Up', function: (){
                    if (formKey.currentState!.validate()){

                    }
                  },),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('If you have an account'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: SignIn(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
