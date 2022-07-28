import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget {
  String number;
  String name;

  AccountInfo(this.number, this.name);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          number,
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black45, fontSize: 15),
        )
      ],
    );
  }
}
