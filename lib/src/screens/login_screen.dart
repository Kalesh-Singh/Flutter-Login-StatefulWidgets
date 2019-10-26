import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'youremail@domain.com',
      ),
      validator: (String value) {
        // Should return null if valid, else the error message if invalid
        return (value.contains('@')) ? null : 'Invalid email';
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
//      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
      ),
      validator: (String value) {
        return (value.length > 3) ? null : 'Password is too short';
      }
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.lightBlue,
      child: Text('Submit'),
      onPressed: () {
        formKey.currentState.validate();
      },
    );
  }
}
