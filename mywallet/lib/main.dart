import 'package:flutter/material.dart';

import "package:mywallet/pages/login.dart";
import "package:mywallet/pages/dashboard.dart";
import "package:mywallet/pages/register.dart";
import "package:mywallet/pages/send_money.dart";
import "package:mywallet/pages/pay_money.dart";
import "package:mywallet/pages/confirmation.dart";
import "package:mywallet/pages/airtime.dart";

void main() {
  runApp(MobileWallet());
}

class MobileWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "mobile banking",
        theme: ThemeData(
          primaryColor: Colors.teal,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
              .copyWith(secondary: Colors.teal),

          textTheme: TextTheme(
              headlineMedium: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal),
              bodyMedium: TextStyle(fontSize: 20, color: Colors.black)),

          buttonTheme: ButtonThemeData(
              buttonColor: Colors.teal, textTheme: ButtonTextTheme.primary),
          //styling for modern elevated buttons
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal)),
        ),
        darkTheme: ThemeData.dark().copyWith(
            primaryColor:
                Colors.teal, //setting teal as the primary color for dark theme

            colorScheme: ColorScheme.fromSwatch(
                    primarySwatch: Colors
                        .teal //setting teal as the main color for dark theme

                    )
                .copyWith(
                    secondary: Colors
                        .tealAccent // setting tealAccent as the secondary color in dark theme
                    ),
            textTheme: TextTheme(
                headlineMedium: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
                bodyMedium: TextStyle(fontSize: 20, color: Colors.white)),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal))),
        themeMode: ThemeMode.system,
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          "/register": (context) => RegisterPage(),
          "/dashboard": (context) => DashBoardPage(),
          "/send_money": (context) => SendMoneyPage(),
          "/pay_money": (context) => PayMoneyPage(),
          "/confirmation": (context) => ConfirmationPage(),
          "/airtime": (context) => AirtimePage()
        });
  }
}
