import 'dart:ui';

import 'package:flutter/material.dart';


class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 158, 162),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 70,),
            Container(
              alignment: Alignment.center,
              child: const Text('medinow',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Meditate With Us!',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(height: 50,),
            InkWell(
                onTap: () => {},
                child:  Padding( padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                child:Container(
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign in with Apple',
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () => {},
              child:  Padding(padding: EdgeInsets.fromLTRB(15, 0, 15, 10), child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 205, 253, 254),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Center(
                  child: Text(
                    'Continue with Email or Phone',
                    style: TextStyle(fontSize: 18.0, color: Colors.black),
                  ),
                ),
              ),
            ),
            ), 
            InkWell(
              onTap: () => {},
              child: Container(
                height: 50.0,
                child: const Center(
                  child: Text(
                    'Continue With Google',
                    style: TextStyle(fontSize: 14.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          Container(
            width: 300,
            height: 280,
            child: Image.asset('images/Medinow.jpg'),
          )

          ],
        ),
      ),
    );
  }
}
