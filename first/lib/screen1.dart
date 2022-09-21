import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _ScreenState();
}

class _ScreenState extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Meditate",
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.all(12),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 32.0,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 0, 12),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 53, 162, 164),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 254, 255),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "Bible In a Year",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 53, 162, 164),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 254, 255),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "Dailies",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 53, 162, 164),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 254, 255),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "Minutes",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 53, 162, 164),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () => {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 234, 254, 255),
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  "November",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 53, 162, 164),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.grey, width: 0.2)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('images/SunAndMoon.png'),
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "A Song of Moon",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                          child: Text(
                            "Start with basics",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.favorite_border,
                                size: 13.0,
                              ),
                              Expanded(
                                child: Text(
                                  '9 Sessions',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Text(
                                'Start',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.black,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child:                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 185,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey, width: 0.2)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/SleepHour.png'),
                              const Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "The Sleep Hour",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
                                child: Text(
                                  "Ashna Mukherjee",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 13.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '3 Sessions',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        width: 185,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey, width: 0.2)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/EasyOnTheMission.png'),
                              const Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Easy On The Mission",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
                                child: Text(
                                  "Peter Mach",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 13.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '5 minutes',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 185,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey, width: 0.2)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/RelaxWithMe.png'),
                              const Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Relax With Me",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
                                child: Text(
                                  "Amanda James",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 13.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '3 Sessions',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        width: 185,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(color: Colors.grey, width: 0.2)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('images/SunAndEnergy.png'),
                              const Padding(
                                padding: EdgeInsets.all(4),
                                child: Text(
                                  "Sun and Energy",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(4, 2, 4, 0),
                                child: Text(
                                  "Mecheal Hui",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    Icon(
                                      Icons.favorite_border,
                                      size: 13.0,
                                    ),
                                    Expanded(
                                      child: Text(
                                        '5 minutes',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.black,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
