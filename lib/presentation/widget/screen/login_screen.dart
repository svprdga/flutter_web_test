import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // ****************************** LIFECYCLE ****************************** //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 400,
          child: Container(
            child: Card(
              child: Form(
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // USERNAME
                      Container(
                        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Username'
                          ),
                          validator: (value) {
                            return null;
                          },
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      // PASSWORD
                      Container(
                        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Password'
                          ),
                          validator: (value) {
                            return null;
                          },
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                      // SUBMIT
                      Container(
                        padding: EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            child: Text('Login'),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/contents');
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}