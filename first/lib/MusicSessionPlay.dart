import 'dart:ui';

import 'package:flutter/material.dart';

class MusicSessionPlay extends StatefulWidget {
  const MusicSessionPlay({Key? key}) : super(key: key);

  @override
  State<MusicSessionPlay> createState() => _ScreenState();
}

class _ScreenState extends State<MusicSessionPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
              width: 380,
              height: 250,
              alignment: Alignment.center,
              child: Image.asset('images/third.jpg'),
            ),
            const SizedBox(height: 12,),
                   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
                      child: const Text('Peter Mach',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          )),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      alignment: Alignment.topLeft,
                      child: const Text('Mind Deep Relax',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      width: 350,
                      alignment: Alignment.topLeft,
                      child: const Text(
                          'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                          style: TextStyle(
                            fontSize: 15,
                          )),
                    ),
                    InkWell(
                      onTap: () => {},
                      child: Container(
                        margin: EdgeInsets.all(15),
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 3, 158, 162),
                          border: Border.all(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: 
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                          Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                ),
                              Text(
                            'Play next Session',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),

                            ],
                            
                            ) 
                        
                      ),
                    ),
                  ]),
            const SizedBox(height: 12,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                  children: [
                    const SizedBox(height: 8,),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {},
                            child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 47, 128, 237),
                                    borderRadius: BorderRadius.circular(10),
                                    ),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                )),
                          ),
                          Expanded(
                              child: Column(children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('Sweet Memories',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('December 29 Pre-Launch',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  )),
                            ),
                          ])),
                          Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: const Text('...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                        ]),
                    const SizedBox(height: 8),
                    const Divider(
                      height: 1,
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.grey,
                    )
                  ],
                ),
                 Column(
                  children: [
                    const SizedBox(height: 10,),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {},
                            child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 3, 158, 162),
                                    borderRadius: BorderRadius.circular(10),),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                )),
                          ),
                          Expanded(
                              child: Column(children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('A Day Dream',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('December 29 Pre-Launch',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  )),
                            ),
                          ])),
                          Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: const Text('...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                        ]),
                    const SizedBox(height: 8),
                    const Divider(
                      height: 1,
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.grey,
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                  Column(
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () => {},
                            child: Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 240, 146, 53),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 240, 146, 53),
                                        style: BorderStyle.solid)),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.arrow_right_outlined,
                                  color: Colors.white,
                                )),
                          ),
                          Expanded(
                              child: Column(children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('Mind Explore',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  )),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: const Text('December 29 Pre-Launch',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  )),
                            ),
                          ])),
                          Container(
                            width: 40,
                            height: 40,
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: const Text('...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 30,
                                )),
                          ),
                        ]),
                    const SizedBox(height: 10),
                    const Divider(
                      height: 1,
                      thickness: 0.2,
                      indent: 12,
                      endIndent: 12,
                      color: Colors.grey,
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
