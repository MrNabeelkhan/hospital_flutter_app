import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/screens/edit_profile.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({Key? key}) : super(key: key);

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    width: double.infinity,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: TextFormField(
                        decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(left:15),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(100)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(100)),
                      fillColor: const Color(0xffEBEEF2),
                      filled: true,
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: MyColors.iconColor,
                      ),
                      hintText: "search",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.leadColor),
                          borderRadius: BorderRadius.circular(100)),
                    )),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/afg.png',
                      leadingText: 'AG',
                      flagName: 'Afghanistan'),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/albania.png',
                      leadingText: 'AL',
                      flagName: 'Albania'),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/algeria.png',
                      leadingText: 'AG',
                      flagName: 'Algeria'),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/andora.png',
                      leadingText: 'An',
                      flagName: 'Andora'),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/angola.png',
                      leadingText: 'AG',
                      flagName: 'Angola'),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/argin.png',
                      leadingText: 'AL',
                      flagName: 'Argintina'),
                  const SizedBox(
                    height: 24,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Card(
                      image: 'assets/images/argin.png',
                      leadingText: 'AL',
                      flagName: 'Argintina'),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: GestureDetector(
            child: ButtonWidget(
              buttonText: 'Continue',
            ),
            onTap: () {
              Get.to(EditProfile());
            },
          ),
        ),
      ),
    );
  }
}

class Card extends StatefulWidget {
  Card(
      {required this.flagName, required this.image, required this.leadingText});

  final String image;
  final String leadingText;
  final String flagName;

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 78,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffEBEEF2), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Image.asset(
            widget.image,
            height: 30,
            width: 30,
          ),
          Text(
            widget.leadingText,
            style: TextStyle(
              color: MyColors.leadColor,
              fontSize: 14,
              fontFamily: 'SourceSansPro',
            ),
          ),
          Text(
            widget.flagName,
            style: TextStyle(
              color: MyColors.textColor,
              fontSize: 16,
              fontFamily: 'SourceSansPro',
            ),
          ),
          Checkbox(
            checkColor: Colors.white,
            activeColor: Colors.green,
            side: BorderSide(
                style: BorderStyle.solid, color: Colors.green, width: 2),
            fillColor: MaterialStateColor.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.green; // the color when checkbox is selected;
                }
                return Colors.white; //the color when checkbox is unselected;
              },
            ),
            value: isChecked,
            shape: CircleBorder(
                side: BorderSide(
                    color: MyColors.greenColor,
                    width: 2,
                    style: BorderStyle.solid)),
            // focusColor: Colors.green,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ]));
  }
}
