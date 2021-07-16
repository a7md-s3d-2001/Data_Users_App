import 'package:flutter/material.dart';
import 'package:login_register/modules/terms_and_conditions/terms_and_conditions.dart';
import 'package:login_register/shared/components/components.dart';
import 'package:page_transition/page_transition.dart';
import '../sign_in/signin.dart';
import '../sign_up/signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            'Data',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'U',
                            style: TextStyle(
                              fontSize: 55.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                          Text(
                            'sers',
                            style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  defaultButton(
                    function: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: SignIn(),
                        ),
                      );
                    },
                    text: 'Sign In',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  defaultButton(
                    function: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: SignUp(),
                        ),
                      );
                    },
                    text: 'Sign Up',
                    background: Colors.white,
                    colorTextButton: Colors.blue,
                  ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(child: Text('Read this terms and conditions')),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
