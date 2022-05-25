import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/utils/custom_colors.dart';

class psswrdTxtFldWidget extends StatefulWidget {
  final String hintText;
  final String lebalText;

  psswrdTxtFldWidget({
    required this.hintText,
    required this.lebalText,
  });

  @override
  State<psswrdTxtFldWidget> createState() => _psswrdTxtFldWidgetState();
}

class _psswrdTxtFldWidgetState extends State<psswrdTxtFldWidget> {
  @override
  bool isSecure = true;

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 8),
          child: Row(
            children: [
              Text(
                widget.lebalText,
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
            obscureText: isSecure,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      isSecure = !isSecure;
                    });
                  },
                  child: isSecure
                      ? Icon(Icons.remove_red_eye_outlined,color:MyColors.iconColor,)
                      : Icon(Icons.visibility_off_outlined,color:MyColors.iconColor,),
                ),
                hintText: widget.hintText,
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
}
