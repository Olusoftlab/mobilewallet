import "package:flutter/material.dart";

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text("RRegister page"), backgroundColor: Colors.teal),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                      decoration: const InputDecoration(
                          labelText: "First name",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  const SizedBox(height: 20),
                  TextField(
                      decoration: const InputDecoration(
                          labelText: "Last name",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  const SizedBox(height: 20),
                  TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, "/confirmation"),
                      child: Text("Register"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white))
                ])));
  }
}
