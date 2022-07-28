import 'package:flutter/material.dart';
import 'package:task3/components/account_info.dart';
import 'package:task3/components/account_sections.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 30, right: 240),
                        child: Text(
                          "9:41",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),
                      Icon(
                        Icons.signal_cellular_alt_rounded,
                        size: 15,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.wifi,
                        size: 15,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.battery_6_bar_sharp,
                        size: 15,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        radius: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/img.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Connor Davis",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        const Text(
                          "@jorgecutis",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(60),
                            ),
                            child: const Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AccountInfo("128", "Following"),
                      AccountInfo("3120", "Follower"),
                      AccountInfo("5024", "Likes"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Divider(
              height: 1,
              thickness: 0.5,
              color: Colors.black12,
            ),
          ),
          Column(
            children: [
              AccountSections(Icons.arrow_right_outlined, Colors.redAccent,
                  "My live stream"),
              const Padding(
                padding: EdgeInsets.only(left: 12.5, right: 12.5),
                child: Divider(
                  thickness: 0.5,
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              AccountSections(Icons.comment, Colors.greenAccent, "Messages"),
              const Padding(
                padding: EdgeInsets.only(left: 12.5, right: 12.5),
                child: Divider(
                  thickness: 0.5,
                  height: 1,
                  color: Colors.black12,
                ),
              ),
              AccountSections(Icons.group, Colors.indigo, "Group"),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top:20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
              ),
              child: Column(
                children: [
                  AccountSections(Icons.wallet, Colors.amber,
                      "My wallet"),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.5, right: 12.5),
                    child: Divider(
                      thickness: 0.5,
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  AccountSections(Icons.signal_cellular_alt_rounded, Colors.cyan,
                      "My level"),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.5, right: 12.5),
                    child: Divider(
                      thickness: 0.5,
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  AccountSections(Icons.person_add_alt_sharp, Colors.green,
                      "Find Friends"),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.5, right: 12.5),
                    child: Divider(
                      thickness: 0.5,
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  AccountSections(Icons.view_list_outlined, Colors.orange,
                      "Blacklist"),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.5, right: 12.5),
                    child: Divider(
                      thickness: 0.5,
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  AccountSections(Icons.settings, Colors.black,
                      "Settings"),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
