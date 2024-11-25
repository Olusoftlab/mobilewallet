import "package:flutter/material.dart";

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Confirmation"),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(children: <Widget>[
              Text("Account creation confirmed",
                  style: TextStyle(fontSize: 30)),
              SizedBox(width: 10),
              TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/"),
                  child: Text("login"),
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      foregroundColor: Colors.black))
            ])));
  }
}
