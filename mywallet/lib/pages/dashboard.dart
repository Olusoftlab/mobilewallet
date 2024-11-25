import "package:flutter/material.dart";

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(12.0),
            children: <Widget>[
              _buildDashBoardItem(
                  context, Icons.send, "send money", "/send_money"),
              _buildDashBoardItem(
                  context, Icons.payment, "payment", "/pay_money"),
              _buildDashBoardItem(
                  context, Icons.credit_card, "Credit card", "/airtime")
            ]));
  }
}

Widget _buildDashBoardItem(
    BuildContext context, IconData icon, String label, String route) {
  return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Card(
          elevation: 5, //add shadow for depth
          margin: EdgeInsets.all(5.0), // add margin to each element

          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon, color: Colors.teal, size: 50),
                SizedBox(height: 10),
                Text(label, style: Theme.of(context).textTheme.bodyMedium)
              ])));
}
