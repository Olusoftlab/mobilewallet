import "package:flutter/material.dart";

class PayMoneyPage extends StatefulWidget {
  const PayMoneyPage({super.key});

  @override
  State<PayMoneyPage> createState() => _PayMoneyPageState();
}

class _PayMoneyPageState extends State<PayMoneyPage> {
  final TextEditingController billController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  final List<String> billTypes = ["Dstv", "netflix", "Electricity", "Water"];

  String defaultBill = "Dstv";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pay money"),
          backgroundColor: Colors.teal,
        ),
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DropdownButton<String>(
                    value: defaultBill,
                    onChanged: (String? newValue) {
                      setState(() {
                        if (newValue != null) {
                          defaultBill = newValue;
                        }
                      });
                    },
                    items:
                        billTypes.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.receipt, size: 14),
                              const SizedBox(width: 3),
                              Text(value)
                            ],
                          ));
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  TextField(
                      controller: billController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: "Bill number",
                          border: OutlineInputBorder())),
                  TextField(
                      keyboardType: TextInputType.number,
                      controller: accountController,
                      decoration: const InputDecoration(
                          labelText: "Account number",
                          border: OutlineInputBorder())),
                  SizedBox(height: 20),
                  TextField(
                      keyboardType: TextInputType.number,
                      controller: amountController,
                      decoration: const InputDecoration(
                          labelText: "Amount", border: OutlineInputBorder())),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () async {
                        final myBill = billController.text;
                        final accountNumber = accountController.text;
                        final amount = double.parse(amountController.text);

                        print(
                            "flutter payment: myBill:$myBill\naccountNumber:$accountNumber\namount:$amount ");
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                  title: Text("Payment confirmation"),
                                  content: Text(
                                      "Thanks for making a payment of $amount for $myBill \n your account number $accountNumber passed the verification test "),
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
                      child: Text("Pay money"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white))
                ])));
  }
}
