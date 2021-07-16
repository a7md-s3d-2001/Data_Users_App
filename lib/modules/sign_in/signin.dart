import 'package:flutter/material.dart';
import 'package:login_register/modules/sign_up/signup.dart';
import 'package:login_register/shared/components/components.dart';
import 'package:page_transition/page_transition.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _checkbox = false;
  var phoneOrEmailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool visibleText = true;

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
                              'Sign In',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0,),
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
                  SizedBox(height: 40.0,),
                  defaultInputField(
                    label: 'Phone or email',
                    prefixIcon: Icons.email,
                    controller: phoneOrEmailController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value == null || value.isEmpty){
                        return 'phone or email must be not empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 40.0,),
                  defaultInputField(
                    label: 'Password',
                    prefixIcon: Icons.lock,
                    suffixIcon: visibleText ? Icons.visibility : Icons.visibility_off,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                          Text('Remember me'),
                        ],
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Forget Password?'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  defaultButton(
                    text: 'Sign In',
                    function: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('Processing Data')));
                      }
                    },
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('If you don\'t have an account'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: SignUp(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
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
