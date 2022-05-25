import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/screens/select_interest.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/ui/widgets/textfield_widget.dart';

import '../../utils/custom_colors.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(clipBehavior: Clip.none, children: [
                  Center(
                    child: Container(
                      child: CircleAvatar(
                        child: Image.asset(
                          'assets/images/profile.png',
                          height: 124,
                          width: 124,
                        ),
                        radius: 100,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  Positioned(
                      top: 93,
                      right: 87,
                      child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 50,
                          child: Image.asset(
                            'assets/images/Edit.png',
                            height: 24,
                            width: 24,
                          )))
                ]),
                const SizedBox(height: 24),
                textFieldWidget(
                    hintTxt: 'FullName', lebalText: 'FullName', prefix: ''),
                const SizedBox(height: 24),
                textFieldWidget(
                    hintTxt: 'Email',
                    lebalText: 'Email',
                    prefix: 'assets/images/email.svg'),
                const SizedBox(height: 24),
                textFieldWidget(
                    hintTxt: 'PhoneNumber',
                    lebalText: 'PhoneNumber',
                    prefix: 'assets/images/phone.svg'),
                const SizedBox(height: 24),
                textFieldWidget(
                    hintTxt: 'Gender',
                    lebalText: 'Gender',
                    prefix: 'assets/images/gender.svg'),
                const SizedBox(height: 24),
                textFieldWidget(
                    hintTxt: 'Location',
                    lebalText: 'Location',
                    prefix: 'assets/images/location.svg'),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  child: ButtonWidget(buttonText: 'Continue'),
                  onTap: () {
                    Get.to(SelectInterest());
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

Widget textFieldWidget(
    {required String lebalText,
    required String hintTxt,
    required String prefix}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 8),
        child: Row(
          children: [
            Text(
              lebalText,
              style: TextStyle(
                  color: MyColors.textColor.withOpacity(.80),
                  fontSize: 16,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:5),
              child: Image.asset('assets/images/star.png',height:6,width:6,),
            )
          ],
        ),
      ),
      SizedBox(
        height: 48,
        width: double.infinity,
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 20),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(14.0),
                child: SvgPicture.asset(
                  prefix,
                ),
              ),
              hintText: hintTxt,
              hintStyle: TextStyle(
                  color: MyColors.textColor.withOpacity(0.5),
                  fontSize: 16,
                  fontFamily: 'SourceSansPro'),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: BorderSide(
                    color: MyColors.TxtFeildColor,
                    width: 0.8,
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide:
                      BorderSide(color: MyColors.TxtFeildColor, width: 0.8))),
        ),
      ),
    ],
  );
}
