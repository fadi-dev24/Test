import 'package:firbase/views/fillter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
class home extends StatefulWidget
{
  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home>
{
  bool t1=true;
  bool t2=false;
  bool t3=false;
  bool t4=false;
  bool b1=true;
  bool b2=false;
  bool b3=false;
  bool b4=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor:Color.fromRGBO(239, 241, 245, 1),
      body: ScreenUtilInit(
        builder: ()
        {
           return SingleChildScrollView
           (
        child: Container(
          width: 1.sw,
          alignment: Alignment.topLeft,
          child: Container
            (
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column
              (
              mainAxisSize: MainAxisSize.min,
              children: <Widget>
              [
                SizedBox(height: 0.025.sh,),
                Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wellcom !",
                        style: TextStyle
                          (
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(16, 51, 80, 1),
                          fontSize: 40.sp,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            Get.offAll(fill());
                          });
                        },
                        child: Container
                        (

                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  5, 0, 0, 20),
                              child: Image
                                (
                                image: AssetImage('image/Vector (2).png'),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ), // text
                Container(
                  height: 80,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>
                    [
                      GestureDetector(
                        onTap: () {setState(()
                        { t1=true;
                        t2=false;
                        t3=false;
                        t4=false;});},
                        child: Container(
                          height: 80,
                          child: Padding
                            (
                              padding: EdgeInsets.all(8),
                              child: Container
                                (
                                decoration: BoxDecoration
                                  (
                                    color:t1?Color.fromRGBO(36, 118, 183, 1):Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center
                                    (
                                      child: Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:
                                        [
                                          Icon(
                                            color:t1?Colors.white:Color.fromRGBO(36, 118, 183, 1),
                                            size: 25.sp,
                                            Icons.done_all,
                                          ),
                                          SizedBox(width: 0.03.sw),
                                          Text
                                            (
                                            "All",
                                            style: TextStyle
                                              (
                                              fontSize: 17.sp,
                                                color:t1?Colors.white:Color.fromRGBO(36, 118, 183, 1),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {setState(()
                        { t1=false;
                        t2=true;
                        t3=false;
                        t4=false;});},
                        child: Container(
                          height: 80,
                          child: Padding
                            (
                              padding: EdgeInsets.all(8),
                              child: Container
                                (
                                decoration: BoxDecoration
                                  (
                                    color:t2?Color.fromRGBO(36, 119, 183, 1):Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center
                                    (
                                      child: Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:
                                        [
                                          Image
                                            (
                                            color:t2?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            image: AssetImage(
                                                'image/foody.png'),
                                          ),
                                          SizedBox(width: 0.03.sw),
                                          Text(
                                            "Foody",
                                            style: TextStyle
                                              (
                                              fontSize: 17.sp,
                                              color:t2?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {setState(()
                        { t1=false;
                        t2=false;
                        t3=true;
                        t4=false;});},
                        child: Container(
                          height: 80,
                          child: Padding
                            (
                              padding: EdgeInsets.all(8),
                              child: Container
                                (
                                decoration: BoxDecoration
                                  (
                                    color:t3?Color.fromRGBO(36, 119, 183, 1):Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center
                                    (
                                      child: Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children:
                                        [
                                          Image
                                            (
                                            color:t3?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            image: AssetImage(
                                                'image/beuaty.png'),
                                          ),
                                          SizedBox(width: 0.03.sw),
                                          Text(
                                            "Beuaty",
                                            style: TextStyle
                                              (
                                              fontSize: 17.sp,
                                              color:t3?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {setState(()
                        { t1=false;
                        t2=false;
                        t3=false;
                        t4=true;});},
                        child: Container(
                          height: 80,
                          child: Padding
                            (
                              padding: EdgeInsets.all(8),
                              child: Container
                                (
                                decoration: BoxDecoration
                                  (
                                    color:t4?Color.fromRGBO(36, 119, 183, 1):Colors.white,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20))
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center
                                    (
                                      child: Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:
                                        [
                                          Image
                                            (
                                            color:t4?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            image: AssetImage(
                                                'image/foody.png'),
                                          ),
                                          SizedBox(width: 0.03.sw),
                                          Text(
                                            "Foody",
                                            style: TextStyle
                                              (
                                              fontSize: 17.sp,
                                              color:t4?Colors.white:Color.fromRGBO(36, 119, 183, 1),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 0.015.sh,),
                Stack(
                  children:
                  [
                    Card
                    (
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      elevation: 2,
                      child:  Container
                      (
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow
                              (
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(2,2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                            image: AssetImage("image/dev1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(0,10.sp,0,0),
                        width: 0.85.sw,
                        height: 0.22.sh,
                        child: Row(
                          children:
                          [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column
                                (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                [
                                  Container(
                                      width: 0.22.sw,
                                      height: 0.11.sh,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("image/Rectangle 47.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child:Image(image:AssetImage('image/sp.png'),)
                                  ),
                                  SizedBox(height: 0.025.sh,),
                                  Container(
                                      width: 0.28.sw,
                                      height: 0.033.sh,
                                      child:Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:
                                        [
                                          SizedBox(width: 0.07.sp,),
                                          Text(
                                            " Language ",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
                                    child: Row
                                      (
                                      children:
                                      [
                                        Container
                                          (
                                          width: 13.sp,
                                          height: 13.sp,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("image/corr.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.014.sw,),
                                        Text(
                                          "French",
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        SizedBox(width: 0.01.sw,),
                                        Container(
                                          decoration: BoxDecoration
                                            (
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(15))
                                          ),
                                          child: Icon
                                            (
                                            size: 13.sp,
                                            Icons.keyboard_arrow_right_rounded,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 0.5.sw,
                              padding: EdgeInsets.all(5),
                              child: Column
                                (
                                children:
                                [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "SpaceX engineering Co.",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 9.sp,
                                        ),),
                                      Card(
                                        child: Container
                                        (
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),),
                                          child:Row
                                          (
                                            children:
                                            [
                                              SizedBox(width: 0.01.sw,),
                                              Image(
                                                image: AssetImage('image/Vector (5).png'),
                                              ),
                                              SizedBox(width: 0.02.sw,),
                                              Text(
                                                "10000 AED",
                                                style: TextStyle
                                                  (
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(16, 51, 80, 1),
                                                  fontSize: 7.sp,
                                                ),
                                              ),
                                              SizedBox(width: 0.005.sw,),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.002.sh,),
                                  Row(
                                    children:
                                    [
                                      Text(
                                        "Senior JAVA developer",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 17.sp,
                                        ),),
                                    ]
                                      ),
                                  SizedBox(height: 0.005.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "easiest way to make money from your content \n and followers",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 0.01.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>
                                    [
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/castle.png'),
                                              ),
                                              Text(
                                                "Expier date",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "Expired!",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Text(
                                            "Proposals",
                                            style: TextStyle
                                              (
                                              color: Colors.black,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "5",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/location.png'),
                                              ),
                                              Text(
                                                "Location",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "Dubai",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.005.sh,),
                                  Container(
                                    width: 0.63.sw,
                                    height: 0.04.sh,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>
                                        [
                                          Text(
                                            "Social media tags",
                                            style: TextStyle
                                              (
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(16, 51, 80, 1),
                                              fontSize: 7.sp,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                            (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/Rectangle 44.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                              (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                  (
                                                      width: 20.sp,
                                                      height: 20.sp,
                                                      child: Image
                                                      (
                                                          image:AssetImage('image/cam.png')
                                                      ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/21.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/22.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/31.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/32.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,3.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/41.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/in.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.fromLTRB(0,0,4.sp,0),
                      alignment:Alignment.topRight,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Opacity(
                        opacity: 0.6,
                        child: Container
                        (
                          decoration: BoxDecoration
                          (
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(3, -4), // Shadow position
                              ),
                            ],
                          ),
                          child:CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar
                              (
                                radius: 20,
                                backgroundColor:Color.fromRGBO(226, 102, 102,1),
                                child:Image
                                  (
                                  image:AssetImage("image/hart.png"),
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.015.sh,),
                Stack(
                  children:
                  [
                    Card
                      (
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      elevation: 2,
                      child:  Container
                        (
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow
                              (
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(2,2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                            image: AssetImage("image/dev1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(0,10.sp,0,0),
                        width: 0.85.sw,
                        height: 0.22.sh,
                        child: Row(
                          children:
                          [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column
                                (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                [
                                  Container(
                                      width: 0.22.sw,
                                      height: 0.11.sh,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("image/Rectangle 47.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child:Image(image:AssetImage('image/logo2.png'),)
                                  ),
                                  SizedBox(height: 0.025.sh,),
                                  Container(
                                      width: 0.28.sw,
                                      height: 0.033.sh,
                                      child:Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:
                                        [
                                          SizedBox(width: 0.07.sp,),
                                          Text(
                                            " Language ",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
                                    child: Row
                                      (
                                      children:
                                      [
                                        Container
                                          (
                                          width: 13.sp,
                                          height: 13.sp,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("image/corr.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.014.sw,),
                                        Text(
                                          "English",
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        SizedBox(width: 0.01.sw,),
                                        Container(
                                          decoration: BoxDecoration
                                            (
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(15))
                                          ),
                                          child: Icon
                                            (
                                            size: 13.sp,
                                            Icons.keyboard_arrow_right_rounded,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 0.5.sw,
                              padding: EdgeInsets.all(5),
                              child: Column
                                (
                                children:
                                [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "IBM technology Co.",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 9.sp,
                                        ),),
                                      Card(
                                        child: Container
                                          (
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),),
                                          child:Row
                                            (
                                            children:
                                            [
                                              SizedBox(width: 0.01.sw,),
                                              Image(
                                                image: AssetImage('image/Vector (5).png'),
                                              ),
                                              SizedBox(width: 0.02.sw,),
                                              Text(
                                                "8000 AED",
                                                style: TextStyle
                                                  (
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(16, 51, 80, 1),
                                                  fontSize: 7.sp,
                                                ),
                                              ),
                                              SizedBox(width: 0.005.sw,),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.002.sh,),
                                  Row(
                                      children:
                                      [
                                        Text("Junior UI designer",
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontSize: 17.sp,
                                          ),),
                                      ]
                                  ),
                                  SizedBox(height: 0.005.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "easiest way to make money from your content \n and followers",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 0.01.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>
                                    [
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/castle.png'),
                                              ),
                                              Text(
                                                "Expier date",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "01/01/2023",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Text(
                                            "Proposals",
                                            style: TextStyle
                                              (
                                              color: Colors.black,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "0",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/location.png'),
                                              ),
                                              Text(
                                                "Location",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "Dubai",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.005.sh,),
                                  Container(
                                    width: 0.63.sw,
                                    height: 0.04.sh,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>
                                        [
                                          Text(
                                            "Social media tags",
                                            style: TextStyle
                                              (
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(16, 51, 80, 1),
                                              fontSize: 7.sp,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/Rectangle 44.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/cam.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/21.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/22.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/31.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/32.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,3.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/41.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/in.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.fromLTRB(0,0,4.sp,0),
                      alignment:Alignment.topRight,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Opacity(
                        opacity: 0.8,
                        child: Container
                          (
                          decoration: BoxDecoration
                            (
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(3, -4), // Shadow position
                              ),
                            ],
                          ),
                          child:CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar
                              (
                                radius: 20,
                                backgroundColor:Color.fromRGBO(226, 102, 102,1),
                                child:Image
                                  (
                                  image:AssetImage("image/hart2.png"),
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.015.sh,),
                Stack(
                  children:
                  [
                    Card
                      (
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      elevation: 2,
                      child:  Container
                        (
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow
                              (
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: Offset(2,2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          image: DecorationImage(
                            image: AssetImage("image/dev1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(0,10.sp,0,0),
                        width: 0.85.sw,
                        height: 0.22.sh,
                        child: Row(
                          children:
                          [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Column
                                (
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                [
                                  Container(
                                      width: 0.22.sw,
                                      height: 0.11.sh,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage("image/Rectangle 47.png"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child:Image(image:AssetImage('image/logo3.png'),)
                                  ),
                                  SizedBox(height: 0.025.sh,),
                                  Container(
                                      width: 0.28.sw,
                                      height: 0.033.sh,
                                      child:Row
                                        (
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children:
                                        [
                                          SizedBox(width: 0.07.sp,),
                                          Text(
                                            " Language ",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                  Container(
                                    child: Row
                                      (
                                      children:
                                      [
                                        Container
                                          (
                                          width: 13.sp,
                                          height: 13.sp,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage("image/corr.png"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.014.sw,),
                                        Text(
                                          "Arabic",
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        SizedBox(width: 0.01.sw,),
                                        Container(
                                          decoration: BoxDecoration
                                            (
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(Radius.circular(15))
                                          ),
                                          child: Icon
                                            (
                                            size: 13.sp,
                                            Icons.keyboard_arrow_right_rounded,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 0.5.sw,
                              padding: EdgeInsets.all(5),
                              child: Column
                                (
                                children:
                                [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "Meta Technology Company",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 9.sp,
                                        ),),
                                      Card(
                                        child: Container
                                          (
                                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),),
                                          child:Row
                                            (
                                            children:
                                            [
                                              SizedBox(width: 0.01.sw,),
                                              Image(
                                                image: AssetImage('image/Vector (5).png'),
                                              ),
                                              SizedBox(width: 0.02.sw,),
                                              Text(
                                                "7000 AED",
                                                style: TextStyle
                                                  (
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromRGBO(16, 51, 80, 1),
                                                  fontSize: 7.sp,
                                                ),
                                              ),
                                              SizedBox(width: 0.005.sw,),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.002.sh,),
                                  Row(
                                      children:
                                      [
                                        Text(
                                          "Social Media Specialist",
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                          ),),
                                      ]
                                  ),
                                  SizedBox(height: 0.005.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children:
                                    [
                                      Text(
                                        "easiest way to make money from your content \n and followers",
                                        style: TextStyle
                                          (
                                          color: Colors.white,
                                          fontSize: 8.sp,
                                        ),),
                                    ],
                                  ),
                                  SizedBox(height: 0.01.sh,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>
                                    [
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/castle.png'),
                                              ),
                                              Text(
                                                "Expier date",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "Expired!",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Text(
                                            "Proposals",
                                            style: TextStyle
                                              (
                                              color: Colors.black,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "2",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: <Widget>
                                        [
                                          Row(
                                            children: [
                                              Image(
                                                image: AssetImage('image/location.png'),
                                              ),
                                              Text(
                                                "Location",
                                                style: TextStyle
                                                  (
                                                  color: Colors.black,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 0.007.sh,),
                                          Text(
                                            "Ajman",
                                            style: TextStyle
                                              (
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 0.005.sh,),
                                  Container(
                                    width: 0.63.sw,
                                    height: 0.04.sh,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>
                                        [
                                          Text(
                                            "Social media tags",
                                            style: TextStyle
                                              (
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromRGBO(16, 51, 80, 1),
                                              fontSize: 7.sp,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/Rectangle 44.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/cam.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/21.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/22.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/31.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/32.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.fromLTRB(0,3.sp,0,0),
                                            child: Container
                                              (

                                              decoration: BoxDecoration
                                                (
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                                image: DecorationImage(
                                                  image: AssetImage("image/41.png"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Padding
                                                (
                                                  padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                  child: Container
                                                    (
                                                    width: 20.sp,
                                                    height: 20.sp,
                                                    child: Image
                                                      (
                                                        image:AssetImage('image/in.png')
                                                    ),
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding:EdgeInsets.fromLTRB(0,0,4.sp,0),
                      alignment:Alignment.topRight,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Opacity(
                        opacity: 0.6,
                        child: Container
                          (
                          decoration: BoxDecoration
                            (
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 4,
                                offset: Offset(3, -4), // Shadow position
                              ),
                            ],
                          ),
                          child:CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.grey,
                            child: CircleAvatar
                              (
                                radius: 20,
                                backgroundColor:Color.fromRGBO(226, 102, 102,1),
                                child:Image
                                  (
                                  image:AssetImage("image/hart.png"),
                                )
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
        }
       ),
      bottomNavigationBar: Container
      (
        height: 0.14.sh,
          decoration: BoxDecoration
          (
            boxShadow: [
              BoxShadow
                (
                color: Color.fromRGBO(47, 208, 199, 0.5),
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(0,2),
              ),
            ],
            color:Color.fromRGBO(36, 119, 183, 1),
            borderRadius: BorderRadius.only
            (
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40)),
          ),
          child: ClipRRect
          (
            borderRadius: BorderRadius.only
            (
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          child:Row
          (
            children:
            [
              Container
              (
                child: Row
                (
                  children:
                  [
                    GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          b1=true;
                          b2=false;
                          b3=false;
                          b4=false;
                        });
                      },
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(11.sp),
                          child:Container
                            (
                            width: 70.sp,
                            height: 70.sp,
                            decoration: BoxDecoration
                            (
                              color:b1?Color.fromRGBO(239, 241, 245, 1):Color.fromRGBO(36, 119, 183, 1),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Image
                              (
                              color:b1?Color.fromRGBO(36, 119, 183, 1):Color.fromRGBO(239, 241, 245, 1),
                              image:AssetImage('image/home.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: ()
                      {
                        setState((){
                          b2=true;
                          b1=false;
                          b3=false;
                          b4=false;
                        });
                      },
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(11.sp),
                          child:Container
                            (
                            width: 70.sp,
                            height: 70.sp,
                            decoration: BoxDecoration
                              (
                              color:b2?Color.fromRGBO(239, 241, 245, 1):Color.fromRGBO(36, 119, 183, 1),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Image
                              (
                              color:b2?Color.fromRGBO(36, 119, 183, 1):Color.fromRGBO(239, 241, 245, 1),
                              image:AssetImage('image/noti.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(

                      onTap: ()
                      {
                      setState((){b3=true;b1=false;b2=false;b4=false;});
                      },
                      child: Container(
                        child: Container(
                          padding: EdgeInsets.all(11.sp),
                          child:Container
                            (
                            width: 70.sp,
                            height: 70.sp,
                            decoration: BoxDecoration
                              (
                              color:b3?Color.fromRGBO(239, 241, 245, 1):Color.fromRGBO(36, 119, 183, 1),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Image
                              (
                              color:b3?Color.fromRGBO(36, 119, 183, 1):Color.fromRGBO(239, 241, 245, 1),
                              image:AssetImage('image/job.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: ()
                        {
                          setState((){b4=true;b1=false;b2=false;b3=false;});
                        },
                        child: Container(
                        child: Container(
                          padding: EdgeInsets.all(11.sp),
                          child:Container
                            (
                            width: 70.sp,
                            height: 70.sp,
                            decoration: BoxDecoration
                              (
                              color:b4?Color.fromRGBO(239, 241, 245, 1):Color.fromRGBO(36, 119, 183, 1),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Image
                              (
                              color:b4?Color.fromRGBO(36, 119, 183, 1):Color.fromRGBO(239, 241, 245, 1),
                              image:AssetImage('image/chat.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}