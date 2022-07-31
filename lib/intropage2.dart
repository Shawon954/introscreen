import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {

  final List<String> Section = [
    'A Section',
    'B Section',
    'C Section',
    'D Section',
  ];


  String? selectedSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0,68,88, 1),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(height: 20,),
            Center(
              child: Lottie.asset('assets/second.json',
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/1,),
            ),
            SizedBox(height: 30,),
            Text("Select Section",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Center(
              child: CustomDropdownButton2(
                dropdownDecoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: 'Section',
                dropdownItems: Section,
                value: selectedSection == "" ? null : selectedSection,
                onChanged: (value) {
                  setState(() {
                    selectedSection = value;
                    print(selectedSection);
                  });
                },
              ),
            ),
          Spacer(),
          ],
        ),
      ),

    );
  }
}
