import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/screens/password_sucessfull.dart';
import 'package:hospitalapp/ui/widgets/appbar_widget.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import '../../utils/custom_colors.dart';
import '../widgets/textfield_widget.dart';
import 'package:get/get.dart';
class NewPassword extends StatefulWidget {

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isRemember=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar:AppBarWidget(centerText: 'Reset Password',),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                const SizedBox(height:18,),
              Padding(
                padding: const EdgeInsets.only(left:20),
                child: Image.asset('assets/images/resetpassword.png',height:220,width:338,),
              ),
              const SizedBox(height:24,),
              Text('Create a new password',style:TextStyle(color:MyColors.textColor,fontSize:16,fontFamily:'SourceSansPro'),),
                const SizedBox(height:24,),
              psswrdTxtFldWidget(
                hintText: 'New Password',
                lebalText: 'New Password',
              ),
              const SizedBox(
                height: 20,
              ),
              psswrdTxtFldWidget(
                hintText: 'Confirm New Password',
                lebalText: 'Confirm New Password',
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
                const SizedBox(height:80,),
                GestureDetector(child: ButtonWidget(buttonText: 'Save'),onTap:(){
                  Get.to(PasswordSuccesful());
                },)
            ],),
          ),
        ),
      ),
    );
  }
}
