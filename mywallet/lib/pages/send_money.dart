import "package:flutter/material.dart";

class SendMoneyPage extends StatelessWidget {
  SendMoneyPage({super.key});

  final TextEditingController recipientController =
      TextEditingController(); //  manages user phone number

  final TextEditingController amountController =
      TextEditingController(); //manages user amount

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Send money"),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    controller: recipientController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Recipient number",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    )),
                SizedBox(height: 20),
                TextField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "amount", border: OutlineInputBorder())),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      String recipient = recipientController.text;
                      String amount = amountController.text;

                      print("$amount and $recipient");
                    },
                    child: Text("Send money"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 16.0),
                    ))
              ],
            )));
  }
}
