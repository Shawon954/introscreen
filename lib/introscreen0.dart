import 'package:dropdown_button2/custom_dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {

  final List<String> department = [
    'CSE',
    'BBA',
    'BTHM',
    'MBA',

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

            Center(
              child: Lottie.asset('assets/department.json',
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/1,),
            ),

            Text("Select Department",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Center(
              child: CustomDropdownButton2(

                scrollbarThickness: 5.0,
                scrollbarAlwaysShow: true,
                dropdownDecoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: 'Select Dept',
                dropdownItems: department,
                value: selectedValue == "" ? null : selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value;
                    print(selectedValue);
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
