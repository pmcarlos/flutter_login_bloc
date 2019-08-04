import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          Container(
            margin: EdgeInsets.only(top: 25),
          ),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "example.com",
        labelText: "Email address",
        errorText: "Invalid email",
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration:
          InputDecoration(hintText: "At least 6 chars", labelText: "Password"),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text("login"),
      color: Colors.blue,
      onPressed: () {},
    );
  }
}
