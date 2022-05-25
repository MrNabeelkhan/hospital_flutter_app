import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/widgets/button_widget.dart';
import 'package:hospitalapp/utils/custom_colors.dart';
import 'package:get/get.dart';

import 'bank_screen.dart';

class PasswordSuccesful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,

          children: [

            Image.asset('assets/images/Group.png',height:285 ,width:296 ,),
            const SizedBox(height:24,),
            Text('Congratulations!',style:TextStyle(color:MyColors.greenColor,fontSize:32,fontFamily:'SourceSansPro',fontWeight:FontWeight.w600),),
            const SizedBox(height:24,),
            Text('Your account is ready to use',style:TextStyle(color:MyColors.textColor,fontSize:16,fontFamily:'SourceSansPro'),),
            Spacer(),
            GestureDetector(child: ButtonWidget(buttonText: 'Go to Homepage'),onTap: (){
              Get.to(BankScreen());
            },),
            SizedBox(height:24,),

          ],
        ),
      ),
    );
  }
}
