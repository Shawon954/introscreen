import 'package:flutter/material.dart';
import 'package:introscreen/homepage.dart';
import 'package:introscreen/intropage1.dart';
import 'package:introscreen/intropage2.dart';
import 'package:introscreen/intropage3.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBording extends StatefulWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  State<OnBording> createState() => _OnBordingState();
}

class _OnBordingState extends State<OnBording> {


  PageController _controller = PageController();

  bool LastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
           onPageChanged: (index){
               setState((){
                 LastPage = (index == 2);
               });
           },
           children: [
             IntroScreen1(),
             IntroPage2(),
             IntroPage3(),
           ],
          ),
          Container(
            alignment: Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                SmoothPageIndicator(
                  effect:JumpingDotEffect(
                    activeDotColor: Colors.white,
                  ),
                    controller: _controller, count: 3),

                LastPage? GestureDetector(
                     onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                     },
                     child:  Text("Done",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),),
                ) : GestureDetector(
                     onTap: (){
                       _controller.nextPage(duration: Duration(milliseconds: 500),
                           curve:Curves.easeIn );
                     },
                     child:Icon(Icons.keyboard_double_arrow_right,color: Colors.white,size: 30,),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
