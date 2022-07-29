import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text("Home Page Intro Screen",

            style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
    );
  }
}
