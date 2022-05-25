import 'package:flutter/cupertino.dart';
import '../../utils/custom_colors.dart';
class ButtonWidget extends StatelessWidget {
  final String buttonText;

  ButtonWidget({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyColors.greenColor,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
              color: MyColors.buttonTxtColor,
              fontFamily: 'SourceSansPro',
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
