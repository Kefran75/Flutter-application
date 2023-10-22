import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  Widget calculatorButton(String text) {
    return TextButton(
      onPressed: () => _updatenumber(text),
      child: Container(
        width: 80,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    calculatorButton('1'),
                    calculatorButton('4'),
                    calculatorButton('7'),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton('2'),
                    calculatorButton('5'),
                    calculatorButton('8'),
                  ],
                ),
                Column(
                  children: [
                    calculatorButton('3'),
                    calculatorButton('6'),
                    calculatorButton('9'),
                  ],
                ),
              ],
            ),
            Row( // Added a new row for extra buttons
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                calculatorButton('.'),
                calculatorButton('0'),
                calculatorButton('='),
              ],
            ),
            Text(
              _number,
              style: const TextStyle(
                fontSize: 50,
                color: Color.fromRGBO(75, 0, 255, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}