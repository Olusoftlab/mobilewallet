import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Login",
                      style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),

                        // black border when the input field is focused

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                  SizedBox(height: 20),
                  TextField(
                      obscureText: true, //for textfield of password
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        //elevated button are buttons when pressed triggers an action

                        Navigator.pushReplacementNamed(context, "/dashboard");
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.black),
                      child: Text("login")),
                  SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/register");
                      },
                      child: Text("Dont have an account  Register here?"),
                      style: TextButton.styleFrom(foregroundColor: Colors.teal))
                ])));
  }
}
