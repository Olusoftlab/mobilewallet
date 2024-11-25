import "package:flutter/material.dart";

class AirtimePage extends StatefulWidget {
  const AirtimePage({super.key});

  @override
  State<AirtimePage> createState() => _AirtimePageState();
}

class _AirtimePageState extends State<AirtimePage> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  final List<String> airtimes = ["MTN", "AIRTEL", "9 MOBILE", "GLO"];

  String defaultAirtime = "MTN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Airtime Purchase"),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DropdownButton<String>(
                      value: defaultAirtime,
                      onChanged: (String? newValue) {
                        setState(() {
                          if (newValue != null) {
                            defaultAirtime = newValue;
                          }
                        });
                      },
                      items: airtimes
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem(
                            value: value,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.receipt, size: 14),
                                SizedBox(width: 5.0),
                                Text(value)
                              ],
                            ));
                      }).toList()),
                  SizedBox(height: 20),
                  TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          labelText: "Phone number:",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  const SizedBox(height: 20),
                  TextField(
                      controller: amountController,
                      decoration: const InputDecoration(
                          labelText: "Amount",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)))),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () async {
                        String phoneNumber = phoneController.text;
                        String amount = amountController.text;
                        print(
                            "flutter info:\n Phone number:$phoneNumber\n Amount:$amount ");
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: Text("Payment confirmation"),
                                  content: Text(
                                      "Airtime payment of $amount succesfully done"),
                                  actions: [
                                    TextButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: Text("ok"),
                                        style: TextButton.styleFrom(
                                            backgroundColor: Colors.teal,
                                            foregroundColor: Colors.white))
                                  ]);
                            });
                      },
                      child: Text("Make payment"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white))
                ])));
  }
}
