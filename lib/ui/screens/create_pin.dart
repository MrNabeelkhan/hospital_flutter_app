import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospitalapp/ui/screens/fullhome_page.dart';
import 'package:hospitalapp/ui/widgets/appbar_widget.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'home_screen.dart';

class CreatePin extends StatefulWidget {
  const CreatePin({Key? key}) : super(key: key);

  @override
  State<CreatePin> createState() => _CreatePinState();
}

class _CreatePinState extends State<CreatePin> {
  TextEditingController textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;
  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController.close();

    super.dispose();
  }

  snackBar(String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        centerText: 'Create your Pin',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Text(
              'Please remember this PIN because it will be used when you want to top up, withdraw, or donate.',
              style: TextStyle(
                  fontSize: 16,
                  color: MyColors.textColor,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Text(
              'Create PIN',
              style: TextStyle(
                  color: MyColors.textColor,
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'SourceSansPro'),
            ),
            SizedBox(
              height: 48,
            ),
            Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 30),
                  child: PinCodeTextField(
                    appContext: context,
                    textStyle: TextStyle(color:MyColors.greenColor,fontSize: 3),
                    pastedTextStyle: TextStyle(
                      color:MyColors.greenColor,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: true,
                    blinkWhenObscuring:false,
                    animationType: AnimationType.fade,
                    validator: (v) {
                    },
                    pinTheme: PinTheme(
                          inactiveFillColor:MyColors.iconColor.withOpacity(0.6),
                          shape: PinCodeFieldShape.circle,
                          selectedColor:MyColors.greenColor,
                          fieldWidth: 20,
                          fieldHeight: 20,
                          borderWidth: 0,
                          borderRadius: BorderRadius.circular(20),
                          disabledColor:MyColors.greenColor,
                          selectedFillColor:MyColors.greenColor,
                          inactiveColor:MyColors.greenColor,
                          activeColor:MyColors.greenColor,
                          activeFillColor:MyColors.greenColor,
                    ),
                    cursorColor:MyColors.greenColor,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      return true;
                    },
                  )),
            ),

            const Spacer(),
            InkWell(
              child: ButtonWidget(buttonText: 'Create Pin'),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(10.0))),
                      content: Builder(
                        builder: (context) {
                          return Container(
                            width:340,
                            height:460,
                            decoration: BoxDecoration(
                                color: MyColors.buttonTxtColor,
                                borderRadius: BorderRadius.circular(24)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/dialogbox.png',
                                  height: 180,
                                  width: 186,
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  'Great!',
                                  style: TextStyle(
                                      color: MyColors.greenColor,
                                      fontSize: 26,
                                      fontFamily: 'SourceSansPro',
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Center(
                                  child: Text(
                                    'Your account has been created \n'
                                        '  successfully',
                                    style: TextStyle(
                                      color: MyColors.textColor,
                                      fontSize: 16,
                                      fontFamily: 'SourceSansPro',
                                    ),
                                  ),
                                ),
                                SizedBox(height:50,),
                                GestureDetector(
                                  child: ButtonWidget(buttonText: 'Go to Home'),
                                  onTap: () {
                                    Get.to(FullHomePage());
                                  },
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
