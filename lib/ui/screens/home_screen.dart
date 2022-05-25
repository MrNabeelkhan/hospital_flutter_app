import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/ui/screens/sign_up_withbank.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(children: [
              const SizedBox(height: 50,),
              Image.asset('assets/images/welcome.png'),
              const SizedBox(height: 40,),
              Text('Let’s you in', style: TextStyle(fontSize: 29,
                  fontWeight: FontWeight.w600,
                  color: MyColors.textColor),),
              const SizedBox(height: 40,),
              customcard(
                  image: 'assets/images/facebook.svg', title: 'Facebook'),
              const SizedBox(height: 20,),
              customcard(image: 'assets/images/google.svg', title: 'Google'),
              const SizedBox(height: 20,),
              customcard(image: 'assets/images/apple.svg', title: 'Apple'),
              const SizedBox(height: 32,),
              Text('Or', style: TextStyle(color: MyColors.textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),),
              const SizedBox(height: 32,),
              InkWell(child: ButtonWidget(buttonText: 'Sign in with password'),onTap:(){
                Get.to(SignUpWithBank());
              },),
              const SizedBox(height: 32,),
              RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(
                        color: MyColors.iconColor, fontSize: 16,fontFamily:'SourceSansPro',),
                    children: <TextSpan>[
                      TextSpan(text: ' Sign up',
                          style: TextStyle(
                              color: MyColors.greenColor, fontSize: 16,fontFamily:'SourceSansPro',),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            }
                      )
                    ]
                ),
              ),


            ],),
          ),
        ),
      ),
    );
  }
}

Widget customcard({
  required String image,
  required String title
}) {
  return Container(
    height: 72,
    width: 380,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: MyColors.iconColor.withOpacity(0.5), width: 1)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(image, height: 32, width: 32,),
        const SizedBox(width: 16,),
        Text(title, style: TextStyle(fontSize: 16, color: MyColors.textColor,fontFamily:'SourceSansPro',fontWeight:FontWeight.w600),)
      ],
    ),
  );
}