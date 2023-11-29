import 'package:flutter/material.dart';

import '../login_screen.dart';

class RegisterScreen extends StatelessWidget {
  // const RegisterScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Register to Maclaystore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your first name';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              labelText: 'First Name',
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                              prefixIconColor: Colors.blue),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your last name';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              labelText: 'Last Name',
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                              prefixIconColor: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your valid Email Address';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: 'Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        prefixIconColor: Colors.blue),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    obscureText: false,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      } else {
                        return null;
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        prefixIconColor: Colors.blue),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: OutlinedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Validated');
                        } else {
                          print('Not Validated');
                        }
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }),
                      );
                    },
                    child: Text('continue as guest',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 5,
                        )),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }),
                      );
                    },
                    child: Text('Have an account?'),
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
