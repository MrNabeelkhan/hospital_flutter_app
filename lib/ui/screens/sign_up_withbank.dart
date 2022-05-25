import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/ui/screens/forgot_password.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/ui/widgets/textfield_widget.dart';
import 'package:get/get.dart';
import '../../utils/custom_colors.dart';
import 'edit_profile.dart';

class SignUpWithBank extends StatefulWidget {
  SignUpWithBank({Key? key}) : super(key: key);

  @override
  State<SignUpWithBank> createState() => _SignUpWithBankState();
}

class _SignUpWithBankState extends State<SignUpWithBank> {
  bool isRemember = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                      child: Image.asset(
                    'assets/images/wecare.png',
                    height: 192,
                    width: 199,
                  )),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Sign up for free',
                    style: TextStyle(
                        fontSize: 29,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.w600,
                        color: MyColors.textColor),
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  textFieldWidget(hintTxt: 'Email', prefix: '', lebalText: 'Email'),

                  const SizedBox(
                    height: 20,
                  ),
                  psswrdTxtFldWidget(
                    hintText: 'password',
                    lebalText: 'Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor:MyColors.greenColor,
                        side: const BorderSide(
                            style: BorderStyle.solid, color: Colors.green, width: 2),
                        fillColor: MaterialStateColor.resolveWith(
                              (states) {
                            if (states.contains(MaterialState.selected)) {
                              return MyColors.greenColor; // the color when checkbox is selected;
                            }
                            return Colors.white; //the color when checkbox is unselected;
                          },
                        ),
                        value: isRemember,
                        // focusColor: Colors.green,
                        onChanged: (bool? value) {
                          setState(() {
                            isRemember = value!;
                          });
                        },
                      ),
                      Text(
                        'Remember me',
                        style:
                            TextStyle(color: MyColors.textColor, fontSize: 14),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: ButtonWidget(buttonText: 'SignUp'),
                    onTap: () {
                      Get.to(ForgotPassword());
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'or continue with',
                    style: TextStyle(
                      color: MyColors.textColor,
                      fontSize: 16,
                      fontFamily: 'SourceSansPro',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      customcard(
                        image: 'assets/images/facebook.svg',
                      ),
                      customcard(
                        image: 'assets/images/google.svg',
                      ),
                      customcard(
                        image: 'assets/images/apple.svg',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Already have an account',
                        style:
                            TextStyle(color: MyColors.iconColor, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                  color: MyColors.greenColor, fontSize: 16),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  // navigate to desired screen
                                })
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget customcard({
  required String image,
}) {
  return Container(
    height: 64,
    width: 64,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border:
            Border.all(color: MyColors.iconColor.withOpacity(0.2), width: 1)),
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: SvgPicture.asset(
        image,
      ),
    ),
  );
}
