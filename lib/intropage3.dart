import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0,68,88, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Center(child: Text("Welcome",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),

          ],
        ),
      ),

    );
  }
}
