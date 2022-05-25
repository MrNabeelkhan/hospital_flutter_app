import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/utils/custom_colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String centerText;
  AppBarWidget({required this.centerText});
  @override
  // TODO: implement preferredSize
  Size get preferredSize =>Size.fromHeight(100.0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:42,left:10),
      child: AppBar(
        backgroundColor:Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(right:100),
          child: Text(
            centerText,
            style: TextStyle(
                color: MyColors.textColor,
                fontSize: 26,fontFamily:'SourceSansPro',
                fontWeight: FontWeight.w600),
          ),
        ),
        leading:IconButton(
          icon:Icon(Icons.arrow_back_outlined,color:MyColors.greenColor,size:28,),
      onPressed: () {
      Navigator.of(context).pop();
      }),
        centerTitle: true,
        elevation:0,
      ),
    );
  }
}
