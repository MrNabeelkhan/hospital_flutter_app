import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hospitalapp/utils/custom_colors.dart';

class FullHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight:70,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/images/person.png',
              height: 20,
              width: 20,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'Hi! Adam',
              style: TextStyle(color: MyColors.textColor, fontSize: 26,fontFamily:'SourceSansPro',fontWeight:FontWeight.w600),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10,top:8),
              child: container(
                  icn: Icons.search_outlined),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, left: 10,top:8),
              child: container(icn: Icons.notification_important_rounded),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10,top:8),
              child: container(icn: Icons.bookmark),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 78,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: MyColors.leadColor.withOpacity(0.6), width: 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: BoxDecoration(
                              color: MyColors.greenColor.withOpacity(0.10),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: SvgPicture.asset(
                            'assets/images/account.svg',
                            color: MyColors.greenColor,
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50, top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '#349',
                              style: TextStyle(
                                  fontSize: 20, color: MyColors.textColor,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
                            ),
                            Text(
                              'My wallet balance',
                              style: TextStyle(
                                  color: MyColors.leadColor, fontSize: 16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 44,
                          width: 97,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: MyColors.greenColor, width: 2),
                              borderRadius: BorderRadius.circular(24)),
                          child: Center(
                              child: Text(
                            'Top up',
                            style: TextStyle(
                                fontSize: 16, color: MyColors.greenColor,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
                          )),
                        ),
                      )
                    ],
                  ),
                ),
            const SizedBox(
              height: 24,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      custonCard(),
                      const SizedBox(
                        width: 10,
                      ),
                      custonCard(),
                      const SizedBox(
                        width: 10,
                      ),
                      custonCard()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Urgent Fundraising',
                      style: TextStyle(color: MyColors.textColor, fontSize: 20,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
                    ),
                    Text(
                      'see all',
                      style:
                          TextStyle(color: MyColors.greenColor, fontSize: 16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buttonCard(
                          boxclr: MyColors.greenColor,
                          txtclr: MyColors.buttonTxtColor,
                          txt: 'ALL'),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonCard(
                          boxclr: MyColors.buttonTxtColor,
                          txtclr: MyColors.greenColor,
                          txt: 'Medical'),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonCard(
                          boxclr: MyColors.buttonTxtColor,
                          txtclr: MyColors.greenColor,
                          txt: 'Disaster'),
                      const SizedBox(
                        width: 10,
                      ),
                      buttonCard(
                          boxclr: MyColors.buttonTxtColor,
                          txtclr: MyColors.greenColor,
                          txt: 'Education'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      bookmark(image: 'assets/images/child.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      bookmark(image: 'assets/images/doctor.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Watch the Impact of Your Donation',
                      style: TextStyle(color: MyColors.textColor, fontSize: 20),
                    ),
                    Text(
                      'see all',
                      style:
                          TextStyle(color: MyColors.greenColor, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      bookmark(image: 'assets/images/cover.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      bookmark(image: 'assets/images/doctor.png'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      videocard(
                          image: 'assets/images/hands.png',
                          txt: 'Sarah s Surgery Was Successful'),
                      const SizedBox(
                        width: 10,
                      ),
                      videocard(
                          image: 'assets/images/pateint.png',
                          txt: 'Sarah s Surgery Was Successful'),
                      const SizedBox(
                        width: 10,
                      ),
                      videocard(
                          image: 'assets/images/pateint.png',
                          txt: 'Sarah s Surgery Was Successful'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(
                    children: [
                      detailCard(image:'assets/images/girlprofile.png', name:'Esther Howard', description:'You and 48 others sent this prayer'),
                      const SizedBox(width:12,),
                      detailCard(image:'assets/images/boy.png', name:'Esther Howard', description:'You and 48 others sent this prayer')

                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,),
              ],
            ),
          ),
        ),
          bottomNavigationBar: ClipRRect(
            borderRadius:BorderRadius.only(topRight:Radius.circular(12),topLeft:Radius.circular(12)),
            child: BottomNavigationBar(
                showSelectedLabels: false,   // <-- HERE
                showUnselectedLabels: false, // <-- AND HERE
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/home.png',height:40,width:48,),
                    label:'home'
                  ),
                  BottomNavigationBarItem(
                    icon:Image.asset('assets/images/calender.png',height:40,width:48,),
                      label:'home'
                  ),   BottomNavigationBarItem(
                    icon:Image.asset('assets/images/nots.png',height:40,width:48,),
                      label:'home'
                  ),   BottomNavigationBarItem(
                    icon:Image.asset('assets/images/menu.png',height:40,width:48,),
                      label:'home'
                  ),   BottomNavigationBarItem(
                    icon:Image.asset('assets/images/perso.png',height:40,width:48,),
                      label:'home'
                  ),
                ]
            ),
          )
      ),
    );
  }
}

Widget container({required IconData icn}) {
  return Container(
    height: 44,
    width: 44,
    decoration: BoxDecoration(
        color: MyColors.greenColor.withOpacity(0.10),
        borderRadius: BorderRadius.circular(12)),
    child: Center(
        child: Icon(
      icn,
      size: 28,
      color: MyColors.greenColor,
    )),
  );
}

Widget custonCard() {
  return Stack(children: [
    Container(
      height: 200,
      width: 380,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/child.png',
          fit: BoxFit.fill,
        ),
      ),
    ),
    Positioned(
        left: 10,
        bottom: 25,
        child: Text(
          'Help Alice Brain Surgery',
          style: TextStyle(color: MyColors.buttonTxtColor, fontSize: 20),
        ))
  ]);
}

Widget buttonCard(
    {required Color boxclr, required Color txtclr, required String txt}) {
  return Container(
    height: 44,
    width: 97,
    decoration: BoxDecoration(
        color: boxclr,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: MyColors.greenColor, width: 2)),
    child: Center(
        child: Text(
      txt,
      style:
          TextStyle(color: txtclr, fontSize: 16, fontWeight: FontWeight.w400),
    )),
  );
}

Widget bookmark({required String image}) {
  return Container(
    width: 260,
    height: 285,
    decoration: BoxDecoration(
      border: Border.all(color: MyColors.greenColor, width: 1),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Stack(children: [
          Container(
            height: 160,
            width: 260,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.bookmark,
                size: 40,
                color: MyColors.greenColor,
              ))
        ]),
        const SizedBox(
          height: 24,
        ),
        Text(
          'Help Orphanage Children to..',
          style: TextStyle(
              color: MyColors.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,fontFamily:'SourceSansPro'),
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              '%2,379',
              style: TextStyle(color: MyColors.greenColor, fontSize: 16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'fund raised from 4,200',
              style: TextStyle(color: MyColors.iconColor, fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 4,
          width: 240,
          decoration: BoxDecoration(
              color: MyColors.greenColor,
              borderRadius: BorderRadius.circular(100)),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              '1200',
              style: TextStyle(color: MyColors.greenColor, fontSize: 16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
            ),
            Text(
              'Donates',
              style: TextStyle(color: MyColors.iconColor, fontSize: 14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
            ),
            const Spacer(),
            Text(
              '19',
              style: TextStyle(color: MyColors.greenColor, fontSize: 16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
            ),
            Text(
              'Days',
              style: TextStyle(color: MyColors.iconColor, fontSize: 14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget videocard({required String image, required String txt}) {
  return Stack(children: [
    Container(
      height: 240,
      width: 177,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          )),
    ),
    Positioned(
        top: 100,
        right: 30,
        left: 20,
        child: Column(
          children: [
            Image.asset(
              'assets/images/audio.png',
              height: 30,
              width: 30,
            ),
            const SizedBox(height:12,),
            Text(
              txt,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: MyColors.buttonTxtColor),
            )
          ],
        ))
  ]);
}
Widget detailCard({required String image,required String name ,required String description}){
  return Container(
  height: 221,
  width: 300,
decoration:BoxDecoration(
border:Border.all(color:MyColors.leadColor.withOpacity(0.6),width:1),
borderRadius:BorderRadius.circular(12),

),
child:Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,

  children: [

    Row(

      mainAxisAlignment:MainAxisAlignment.spaceBetween,

    children: [

      Container(

    height:42,

    width: 43,

    decoration:BoxDecoration(

  color:MyColors.greenColor,

  borderRadius:BorderRadius.circular(20)

  ),

    child: Image.asset(image,height:38,width:38,)),

      Padding(

        padding: const EdgeInsets.only(right:80),

        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,

          children: [

            Text(name,style:TextStyle(color:MyColors.textColor,fontSize:16),),

            Text('Today',style:TextStyle(color:MyColors.iconColor,fontSize:16,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),),

          ],

        ),

      ),

      Icon(Icons.more_vert_outlined,color:MyColors.greenColor,),


    ],

    ),
    const SizedBox(height:8,),
    Divider(thickness: 1,color:MyColors.leadColor.withOpacity(0.6),endIndent:8,indent:8,),
    const SizedBox(height:8,),
    Text('Hopefully Audrey can get surgery soon, recover from her illness, '
        'and play with her friends.',style:TextStyle(color:MyColors.iconColor,fontSize:14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),),
    const SizedBox(height:24,),
    Text('You and 48 others sent this prayer',style:TextStyle(color:MyColors.iconColor,fontSize:14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),),
   const SizedBox(height:8,),
   Row(
     children: [
       Icon(Icons.favorite,color:MyColors.greenColor,),
       const SizedBox(width: 10,),
       Text('Aamiin',style:TextStyle(color:MyColors.iconColor,fontSize:14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),),
       const SizedBox(width: 10,),
       Icon(Icons.media_bluetooth_off_outlined,color:MyColors.greenColor,),
       const SizedBox(width: 10,),
       Text('Aamiin',style:TextStyle(color:MyColors.iconColor,fontSize:14,fontFamily:'SourceSansPro',fontWeight:FontWeight.w400),),

     ],
   )

  ],

  ),
),
  );
}
