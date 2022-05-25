import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/screens/new_password_screen.dart';
import 'package:hospitalapp/ui/widgets/appbar_widget.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

class ForgetOtp extends StatelessWidget {
  const ForgetOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        centerText: 'Forgot Password',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              'Code has been send to +6282******39',
              style: TextStyle(color: MyColors.textColor),
            ),
            const SizedBox(height:40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customCard(text: '5'),
                customCard(text: '6'),
                customCard(text: '7'),
                customCard(text: '8'),
              ],
            ),
            const SizedBox(height: 32,),
            RichText(
              textAlign:TextAlign.center,
              text: TextSpan(
                  text: 'Resend code in',
                  style: TextStyle(
                      color: MyColors.iconColor, fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(text: ' 50',
                        style: TextStyle(
                            color: MyColors.greenColor, fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
                          }
                    ),
              TextSpan(text: 's',
                  style: TextStyle(
                      color: MyColors.textColor, fontSize: 16),)
                  ]
              ),
            ),
            Spacer(),
            GestureDetector(child: ButtonWidget(buttonText: 'Verify'),onTap:(){
              Get.to(NewPassword());
            },),
            const SizedBox(height:24,),
          ],
        ),
      ),
    );
  }
}
Widget customCard({required String text}) {
  return Container(
    height: 68,
    width: 83,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: MyColors.greenColor, width: 1),
        boxShadow: [
          BoxShadow(
              offset: Offset(12, 26),
              blurRadius: 50,
              color: Color(0xff5A6CEA).withOpacity(0.1))
        ]),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            color: MyColors.textColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,fontFamily:'SourceSansPro'),
      ),
    ),
  );
}
