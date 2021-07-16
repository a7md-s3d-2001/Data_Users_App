import 'package:flutter/material.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  _TermsAndConditionsState createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terms and Conditions',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'App terms and conditions are an important legal document for app developers and owners, as they establish the rules and restrictions for app use. Terms and conditions for mobile apps help protect your intellectual property, prevent misuse of your app, and limit legal disputes.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'This guide will go over what app terms and conditions are, how they benefit you and users, and how to write terms and conditions for your app. Check out examples of other app’s terms, and download our free app terms and conditions template below.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Mobile app terms and conditions, also referred to as app terms of service or app terms of use, explain the rules, requirements, restrictions, and limitations that users must abide by in order to use a mobile application. Specifically, they act as a binding contract between you and your users. This contract helps protect the rights of both parties.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Business owners and app developers often use the same terms and conditions for both their website and mobile applications in order to keep their terms consistent across all platforms.',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w400,
                    fontSize: 16.0,
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
