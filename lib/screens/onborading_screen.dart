import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboradingScreen extends StatelessWidget {

  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19,),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        pages: [
          PageViewModel(
            title: "shop Now",
            body: " Buying and selling goods or services over the internet, allowing consumers to browse and purchase items from the comfort of their homes and have them delivered to their doorstep",
            image: Image.asset("assets/splash1.png",
            width:200 ,
            
            ),
            decoration: pageDecoration,
          ),
            PageViewModel(
            title: "Big Discount",
            body: " Buying and selling goods or services over the internet, allowing consumers to browse and purchase items from the comfort of their homes and have them delivered to their doorstep",
            image: Image.asset("assets/splash2.png",
            width:200 ,
            
            ),
            decoration: pageDecoration,
          ),
            PageViewModel(
            title: "Free Delivery",
            body: " Buying and selling goods or services over the internet, allowing consumers to browse and purchase items from the comfort of their homes and have them delivered to their doorstep",
            image: Image.asset("assets/splash3.png",
            width:200 ,
            
            ),
            decoration: pageDecoration,
            footer: Padding(padding: EdgeInsets.only(left: 15,right: 15),
            child: ElevatedButton(onPressed: 
            (){}, child: Text("Lets Shop",style: 
            TextStyle(color: Colors.white,fontSize: 18),),
            style: ElevatedButton.styleFrom(
              minimumSize:Size.fromHeight(55),
              backgroundColor: Color(0xFFEf6969),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              )
            ),
            ),
            )
          ),
        ],
        showBackButton: true,
        showDoneButton: false,
        showSkipButton: false,
        back: Text("Back",style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEF6969)
        ),),
        next:  Text("Next",style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFFEF6969)
        ),),
        //   done: Text("Done",style: TextStyle(
        //   fontWeight: FontWeight.w600,
        //   color: Color(0xFFEF6969)
        // ),),
        // skip:  Text("Skip",style: TextStyle(
        //   fontWeight: FontWeight.w600,
        //   color: Color(0xFFEF6969)
        // ),),
        onDone:(){

        } ,
        onSkip: (){},
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Color(0xFFEf6969),
          color: Colors.black26,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          )

        ),
    );
  }
}