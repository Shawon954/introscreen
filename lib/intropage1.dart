import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {

  final List<String> Batch = [
    '17th Batch',
    '18th Batch',
    '19th Batch',
    '20th Batch',
    '21th Batch',
    '22th Batch',
    '23th Batch',
    '24th Batch',
  ];
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0,68,88, 1),
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Select Batch",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
           SizedBox(height: 30,),
            Center(
              child: CustomDropdownButton2(

                scrollbarThickness: 5.0,
                scrollbarAlwaysShow: true,
                dropdownDecoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: 'Select Batch',
                dropdownItems: Batch,
                value: selectedValue == "" ? null : selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                  });
                },
              ),
            ),
            SizedBox(height: 450,),
          ],
        ),
      ),
    );
  }
}
