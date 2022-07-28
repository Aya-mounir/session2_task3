import 'package:flutter/material.dart';

class AccountSections extends StatelessWidget {
  final IconData next;
  final Color color;
  String name;

  AccountSections(this.next, this.color, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 335,
      height: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(100)),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Icon(
                            next,
                            color: Colors.white,
                            size: 12,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Colors.black12,
                  size: 22,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
