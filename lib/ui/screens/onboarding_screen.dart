
import 'package:hospitalapp/ui/screens/home_screen.dart';
import 'package:hospitalapp/utils/custom_colors.dart';

import 'package:introduction_screen/introduction_screen.dart';

import 'package:flutter/material.dart';
class OnboardingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor:MyColors.buttonTxtColor,
        dotsDecorator: DotsDecorator(
          activeColor:MyColors.greenColor,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          activeSize: const Size(6.0, 6.0),

        ),
        pages: [
          PageViewModel(
              image:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/onboarding1.png'),
              ),
              title: 'Donate easily, quickly, right on target all over the world',
              body:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, '
                  'purus sit amet luctus venenatis lectus magna fringilla urna, '
                  'porttitor.',
              decoration: pageDecor),

          PageViewModel(
          image:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/on2.png'),
          ),
            title: 'Create your own fundraising and publish it to the world',
            body:
            'Lorem ipsum dolor sit amet, '
                'consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis,'
                ' lectus magna fringilla urna, porttitor.',
            decoration: pageDecor,
          ),
          PageViewModel(
            image:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('assets/images/on3.png'),
            ),
            title: 'Trusted, transparent, '
                'and effective in sharing kindness',
            body: 'Lorem ipsum dolor sit amet,'
                ' consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis,'
                ' lectus magna fringilla urna, porttitor.',
            decoration: pageDecor,
          ),
        ],
        done: Text(
          'Next',
          style: TextStyle(color:MyColors.greenColor),
        ),
        onDone: () => goToHome(context),
        showSkipButton: true,
        showNextButton:false,
        skip: Text(
          'Skip',
          style: TextStyle(color:MyColors.greenColor,fontSize:18,fontFamily:'SourceSansPro',fontWeight:FontWeight.bold),
        ),
        onSkip: () => goToHome(context),
      ),
    );
  }
  final pageDecor = PageDecoration(
      titleTextStyle: TextStyle(
          color:MyColors.greenColor,fontSize: 20, fontWeight: FontWeight.w600,),
      bodyTextStyle: TextStyle(color:MyColors.textColor,fontSize:16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w600),
      contentMargin: const EdgeInsets.all(20));
  void goToHome(context) => Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) =>HomePage(),

  ));

}

