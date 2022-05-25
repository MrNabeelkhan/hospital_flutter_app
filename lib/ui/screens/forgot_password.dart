import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/widgets/appbar_widget.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

import 'forget_otp.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isSMS = true, isEmail = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          centerText: 'Forgot Password',
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 20),
                  child: Image.asset(
                    'assets/images/forgetpassword.png',
                    height: 250,
                    width: 257,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Select which contact details should we use to reset your password',
                  style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 16,
                      fontFamily: 'SourceSansPro'),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSMS = true;
                      isEmail = false;
                    });
                  },
                  child: customCard(
                      leadText: 'via SMS',
                      image: 'assets/images/chat.png',
                      contText: '+6282******39',
                      isSelected: isSMS),
                ),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSMS = false;
                      isEmail = true;
                    });
                  },
                  child: customCard(
                      leadText: 'via email',
                      image: 'assets/images/Rectangle.png',
                      contText: 'ex***le@yourdomain.com',
                      isSelected: isEmail),
                ),
                const SizedBox(
                  height: 57,
                ),
                GestureDetector(
                  child: ButtonWidget(buttonText: 'Continue'),
                  onTap: () {
                    Get.to(ForgetOtp());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customCard({
  required String leadText,
  required String image,
  required String contText,
  required bool isSelected,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      height: 115,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: isSelected ? MyColors.greenColor : Colors.transparent,
            width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: MyColors.greenColor.withOpacity(0.10),
              ),
              child: Center(
                  child: Image.asset(
                image,
                height: 30,
                width: 30,
              )),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 14,
                ),
                Text(
                  leadText,
                  style: TextStyle(
                      color: MyColors.iconColor.withOpacity(0.50),
                      fontSize: 14,
                      fontFamily: 'SourceSansPro'),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(contText,
                    style: TextStyle(
                        color: MyColors.textColor,
                        fontSize: 18,
                        fontFamily: 'SourceSansPro'))
              ],
            )
          ],
        ),
      ),
    ),
  );
}
