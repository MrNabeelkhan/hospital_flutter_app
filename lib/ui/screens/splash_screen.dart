import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospitalapp/ui/screens/home_screen.dart';
import 'package:hospitalapp/utils/custom_colors.dart';

class MainBottomClass extends StatefulWidget {
  const MainBottomClass({Key? key}) : super(key: key);

  @override
  _MainBottomClassState createState() => _MainBottomClassState();
}

class _MainBottomClassState extends State<MainBottomClass> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    Center(
        child: Text(''),),
    HomePage(),

  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: ""), BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_month), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person_sharp), label: ""),

              ],
              currentIndex: selectedIndex,
              onTap: onItemTapped,
              selectedIconTheme: IconThemeData(
                  color:MyColors.iconColor, opacity: 1.0, size: 30.0),
              // unselectedItemColor: Colors.black,
              unselectedIconTheme:
              IconThemeData(color: MyColors.greenColor, opacity: 1.0, size: 25.0),
              type: BottomNavigationBarType.fixed,
            ),
          ),
        ),
      ),
    );
  }
}
