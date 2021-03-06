import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset('assets/images/login_image.png', fit: BoxFit.cover),
          SizedBox(
            height: 20,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter the username",
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                )),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter the password",
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoute.homeRoute);
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(minimumSize: Size(140.0, 40.0),),
          )
        ]),
      ),
    );
  }
}
