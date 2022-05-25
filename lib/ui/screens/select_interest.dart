import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/ui/widgets/appbar_widget.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

import 'create_pin.dart';

class SelectInterest extends StatefulWidget {
  const SelectInterest({Key? key}) : super(key: key);

  @override
  State<SelectInterest> createState() => _SelectInterestState();
}

class _SelectInterestState extends State<SelectInterest> {
  bool isEducation = false,
      isSocial = false,
      isEnvironment = false,
      isSickChild = false,
      isMedicines = false,
      isInfrastructure = false,
      isArt = false,
      isDisaster = false,
      isOrphange = false,
      isDisable = false,
      isHumanity = false,
      isOthers = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          centerText: 'Select Your Interest',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Choose your interest to donate. '
                  'don,t worry you can always change it later.',
                  style: TextStyle(
                      fontSize: 16,
                      color: MyColors.textColor,
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          isEducation= !isEducation;
                        });
                      },
                      child: CustCard(
                          image: 'assets/images/education.svg',
                          txt: 'Education',isSelected: isEducation),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isSocial= !isSocial;
                        });
                      },
                      child: CustCard(
                          image: 'assets/images/envo.svg',
                          txt: 'Social',isSelected: isSocial),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isEnvironment= !isEnvironment;
                        });
                      },
                      child: CustCard(
                          image: 'assets/images/humanity.svg',
                          txt: 'Environment',isSelected: isEnvironment),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                    onTap: (){
          setState(() {
          isSickChild= !isSickChild;
          });
          },
                      child: CustCard(
                          image: 'assets/images/sickchild.svg',
                          txt: 'SickChild',isSelected: isSickChild),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isMedicines= !isMedicines;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/medicin.svg',
                          txt: 'Medicines',isSelected: isMedicines),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isInfrastructure= !isInfrastructure;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/infrastruture.svg',
                          txt: 'Infrastructure',isSelected: isInfrastructure),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                    onTap: (){
          setState(() {
          isArt= !isArt;
          });
          },
                      child: CustCard(
                          image: 'assets/images/art.svg',
                          txt: 'Art',isSelected: isArt),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isDisaster= !isDisaster;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/fish.svg',
                          txt: 'Disaster',isSelected: isDisaster),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isOrphange= !isOrphange;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/fish.svg',
                          txt: 'Orphanage',isSelected: isOrphange),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                    onTap: (){
          setState(() {
          isDisable= !isDisable;
          });
          },
                      child: CustCard(
                          image: 'assets/images/sickchild.svg',
                          txt: 'Disable',isSelected: isDisable),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isHumanity= !isHumanity;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/humanity.svg',
                          txt: 'Humanity',isSelected: isHumanity),
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            isOthers= !isOthers;
                          });
                        },
                      child: CustCard(
                          image: 'assets/images/other.svg',
                          txt: 'Others',isSelected: isOthers),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100,
                    bottom: 24,
                  ),
                  child: GestureDetector(
                    child: ButtonWidget(buttonText: 'Continue'),
                    onTap: () {
                      Get.to(CreatePin());
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustCard extends StatefulWidget {
  CustCard({required this.image, required this.txt, required this.isSelected});

  final String image;
  final String txt;
  final bool isSelected;

  @override
  State<CustCard> createState() => _CustCardState();
}

class _CustCardState extends State<CustCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105,
      width: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(color: MyColors.leadColor.withOpacity(0.6), width: 1),
        color: widget.isSelected ? MyColors.greenColor : Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              widget.image,
              color: widget.isSelected ? Colors.white : MyColors.greenColor,
              height: 32,
              width: 32,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              widget.txt,
              style: TextStyle(
                  color: widget.isSelected ? Colors.white : MyColors.greenColor,
                  fontSize: 14,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
