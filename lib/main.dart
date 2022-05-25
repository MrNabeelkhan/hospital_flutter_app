import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hospitalapp/ui/screens/bank_screen.dart';
import 'package:hospitalapp/ui/screens/create_pin.dart';
import 'package:hospitalapp/ui/screens/edit_profile.dart';
import 'package:hospitalapp/ui/screens/forget_otp.dart';
import 'package:hospitalapp/ui/screens/forgot_password.dart';
import 'package:hospitalapp/ui/screens/onboarding_screen.dart';
import 'package:hospitalapp/ui/screens/select_interest.dart';
import 'package:hospitalapp/ui/screens/sign_up_withbank.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
  ));
}
