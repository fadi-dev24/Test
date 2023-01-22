import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../filltercontrol/fillter_control.dart';
class fill extends StatefulWidget
{
  @override
  State<fill> createState() => _fillState();
}
var cont=Get.put(filltercontrol());
class _fillState extends State<fill>
{
  @override
  Widget build(BuildContext context)
  {
    return  Scaffold
    (
      resizeToAvoidBottomInset: false,
      backgroundColor:Color.fromRGBO(239, 241, 245, 1),
      body: ScreenUtilInit(
        builder: ()
        {
          return SingleChildScrollView
          (
            reverse: true,
            child: Container(
              alignment: Alignment.center,
              width: 1.sw,
              child: Container(
                padding: EdgeInsets.fromLTRB(10,0,10,0),
                child: Column(
                  children: [
                    SizedBox(height: 0.04.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Filter & Sort",
                            style: TextStyle
                              (
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {cont.drop=!cont.drop;});
                            },
                            child:
                            Container
                              (
                              decoration: BoxDecoration
                                (
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  size: 19.sp,
                                  cont.drop?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_left_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// upper text
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text
                        (
                        "What are you looking for?!",
                        style: TextStyle
                          (
                          fontFamily: 'poppins',
                          color: Color.fromRGBO(163, 163, 163,1),
                          fontSize: 17.sp,
                        ),
                      ),
                    ),// seccond upper text
                    SizedBox(height:  0.01.sh,),
                    AnimatedSize(
                      duration: Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child: Container
                      (
                        height: cont.drop?0.04.sh:0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all
                              (
                                Radius.circular(10)
                            )
                        ),
                        child: TextField(
                          controller: cont.searchController,
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            decorationThickness: 0,
                          ),
                          decoration: InputDecoration
                          (
                            prefixIcon: cont.drop?Icon(
                            Icons.search,
                          ):Container(),
                            prefixIconConstraints: BoxConstraints(
                              minHeight: 20,
                              minWidth: 20,
                            ),
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              fontFamily: 'poppins-reg',
                              fontSize: 11.sp,
                            ),
                          ),
                        ),
                      ),
                    ),// search field
                    SizedBox(height: 0.01.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sort by date",
                        style: TextStyle
                          (
                          fontFamily: 'poppins',
                          color: Color.fromRGBO(16, 51, 80,1),
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp,
                        ),
                      ),
                    ),// Text
                    SizedBox(height:0.01.sh,),
                    Container(
                      height: 0.06.sh,
                      decoration: BoxDecoration
                        (
                          color: Color.fromRGBO(60,60,67,0.1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 1.sp,
                              spreadRadius: 1.sp,
                            )
                          ],
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(7.sp,0,7.sp,0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>
                            [
                              Row(
                                children:
                                [
                                  Container(
                                    width: 10,
                                    height:10,
                                    child: Radio
                                    (
                                      value: 1,
                                      groupValue: cont.groupValue,
                                      onChanged: (newvalue)
                                      {
                                        setState((){cont.groupValue=newvalue!;});
                                      },
                                    ),
                                  ),
                                  Container(
                                    child: SizedBox ( width:0.02.sw ), ),
                                  Container(
                                    child: Text
                                      (
                                      "Newest to Oldest",
                                      style: TextStyle(
                                        fontFamily: 'poppins-reg',
                                        fontSize: 13.sp,
                                        color: Color.fromRGBO(60, 60, 67, 0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children:
                                [
                                  Container(
                                    width: 10,
                                    height:10,
                                    child: Radio
                                      (
                                      value: 2,
                                      groupValue: cont.groupValue,
                                      onChanged: (newvalue)
                                      {
                                        setState((){cont.groupValue=newvalue!;});
                                      },
                                    ),
                                  ),
                                  Container(child: SizedBox ( width:0.02.sw ), ),
                                  Container(
                                    child: Text
                                      (
                                      "Oldest to newest",
                                      style: TextStyle
                                        (
                                        fontFamily: 'poppins-reg',
                                        fontSize: 13.sp,
                                        color: Color.fromRGBO(60, 60, 67, 0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ), //
                      ),
                    ),//check boxes
                    SizedBox(height: 0.01.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Business Category",
                            style: TextStyle
                              (
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {cont.drop2=!cont.drop2;});
                            },
                            child: Container
                              (
                              decoration: BoxDecoration
                                (
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  size: 19.sp,
                                  cont.drop2?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(60,60,67,0.1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      padding: EdgeInsets.all(cont.drop2?2:0),
                      child: AnimatedSize(
                        duration: Duration(milliseconds: 450),
                        curve: Curves.slowMiddle,
                        child: Container(
                          height: cont.drop2?0.12.sh:0,
                          decoration: BoxDecoration
                            (
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          child: Container(
                            margin:EdgeInsets.all(15.sp),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>
                              [
                                Row(
                                  children:
                                  [
                                    Container(
                                      width: 0.020.sw,
                                      height:0.020.sh,
                                      child: Checkbox(
                                        value: cont.rememberMe3,
                                        onChanged: (bool? value)
                                        {
                                          setState(()
                                          {
                                            cont.rememberMe3=value!;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 0.03.sw,),
                                    Container(
                                      child: Text
                                        (
                                        "Foods (1)",
                                        style: TextStyle
                                          (
                                          fontFamily: 'poppins-reg',
                                          fontSize: 13.sp,
                                          color: Color.fromRGBO(60, 60, 67, 0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 0.01.sh,),
                                Row(
                                  children:
                                  [
                                    Container(
                                      width: 0.020.sw,
                                      height:0.020.sh,
                                      child: Checkbox(
                                        value: cont.rememberMe4,
                                        onChanged: (bool? value)
                                        {
                                          setState(() {
                                            cont.rememberMe4=value!;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(width: 0.03.sw,),
                                    Container(
                                      child: Text
                                        (
                                        "Beauty (3)",
                                        style: TextStyle
                                          (
                                          fontFamily: 'poppins-reg',
                                          fontSize: 13.sp,
                                          color: Color.fromRGBO(60, 60, 67, 0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),// check boxes2
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Languages",
                            style: TextStyle
                              (
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {cont.drop3=!cont.drop3;});
                            },
                            child:
                            Container
                              (
                              decoration: BoxDecoration
                                (
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  size: 19.sp,
                                  cont.drop3?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:cont.drop3?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                      width: cont.drop3?20.sp:0,
                                      height:cont.drop3?20.sp:0,
                                      child:cont.drop3?Checkbox(
                                        value: cont.tmap['English'],
                                        onChanged: (bool? value) {
                                          setState(()
                                          {
                                            cont.tmap['English']= value!;
                                          });
                                        },
                                      ):Container()
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "English",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop3?20.sp:0,
                                    height:cont.drop3?20.sp:0,
                                    child:cont.drop3?Checkbox(
                                      value: cont.tmap['French'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.tmap['French']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "French",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop3?20.sp:0,
                                    height:cont.drop3?20.sp:0,
                                    child:cont.drop3?Checkbox(
                                      value: cont.tmap['Arabic'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.tmap['Arabic']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Arabic",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop3?20.sp:0,
                                    height:cont.drop3?20.sp:0,
                                    child:cont.drop3?Checkbox(
                                      value:cont.tmap['Chinese'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.tmap['Chinese']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Chinese",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):Row
                        (
                        children: cont.tmap.entries.map((e)
                        {
                          if(e.value==true)
                            return cont.maplanguage(e);
                          else
                            return Container();
                        }).toList(),
                      ),
                    ),//check boxes3
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Social Media",
                            style: TextStyle
                              (
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {cont.drop4=!cont.drop4;});
                            },
                            child:
                            Container
                              (
                              decoration: BoxDecoration
                                (
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  size: 19.sp,
                                  cont.drop4?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:cont.drop4?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                      width: cont.drop4?20.sp:0,
                                      height:cont.drop4?20.sp:0,
                                      child:cont.drop4?Checkbox(
                                        value: cont.fmap['Youtobe'],
                                        onChanged: (bool? value) {
                                          setState(()
                                          {
                                            cont.fmap['Youtobe']= value!;
                                          });
                                        },
                                      ):Container()
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Youtobe",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop4?20.sp:0,
                                    height:cont.drop4?20.sp:0,
                                    child:cont.drop4?Checkbox(
                                      value: cont.fmap['Linkedin'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.fmap['Linkedin']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Linkedin",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop4?20.sp:0,
                                    height:cont.drop4?20.sp:0,
                                    child:cont.drop4?Checkbox(
                                      value: cont.fmap['Twitter'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.fmap['Twitter']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Twitter",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop4?20.sp:0,
                                    height:cont.drop4?20.sp:0,
                                    child:cont.drop4?Checkbox(
                                      value:cont.fmap['Facebook'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          cont.fmap['Facebook']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(width: 0.02.sw,),
                                Container(
                                  child: Text
                                    (
                                    "Facebook",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-reg',
                                      fontSize: 13.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):Row
                        (
                        children: cont.fmap.entries.map((e)
                        {
                          if(e.value==true)
                            return cont.mapsocailmedia(e);
                          else
                            return Container();
                        }).toList(),
                      ),
                    ),// check boxes4
                    Container(
                      alignment: Alignment.topLeft,
                      child: Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Location",
                            style: TextStyle
                              (
                              fontFamily: 'poppins',
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {cont.drop5=!cont.drop5;});
                            },
                            child:
                            Container
                              (
                              decoration: BoxDecoration
                                (
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: Icon(
                                  size: 19.sp,
                                  cont.drop5?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:cont.drop5?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: cont.drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop5?0.020.sw:0,
                                    height:cont.drop5?0.020.sh:0,
                                    child:cont.drop5?Radio
                                      (
                                      groupValue:cont.groupValue2,
                                      value:1,
                                      onChanged: (newvalue)
                                      {
                                        setState(()
                                        {
                                          cont.location="Dubai";
                                          cont.groupValue2=newvalue!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.025.sw,
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Dubai",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-ref',
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height:cont.drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop5?0.020.sw:0,
                                    height:cont.drop5?0.020.sh:0,
                                    child:cont.drop5?Radio(
                                      groupValue:cont.groupValue2,
                                      value:2,
                                      onChanged: (newvalue)
                                      {
                                        setState(()
                                        {
                                          cont.location="Abo Duhbi";
                                          cont.groupValue2=newvalue!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.025.sw,
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Abo Dabhi",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-ref',
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height:cont.drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: cont.drop5?0.020.sw:0,
                                    height:cont.drop5?0.020.sh:0,
                                    child:cont.drop5?Radio(
                                      groupValue:cont.groupValue2,
                                      value:3,
                                      onChanged: (newvalue)
                                      {
                                        setState(()
                                        {
                                          cont.location="Ajman";
                                          cont.groupValue2=newvalue!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.025.sw,
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Ajman",
                                    style: TextStyle
                                      (
                                      fontFamily: 'poppins-ref',
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(60, 60, 67, 0.5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):cont.locationmap(),
                    ),// check boxes5
                    SizedBox(height: 0.01.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child:Text(
                        "Price",
                        style: TextStyle
                          (
                          fontFamily: 'poppins',
                          color: Color.fromRGBO(16, 51, 80,1),
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp,
                        ),
                      ),
                    ),// text
                    SizedBox(height: 0.01.sh,),
                    Container(
                      child: Row
                        (
                        children:
                        [
                          SizedBox(width:0.02.sw),
                          Text(
                            "Min Price",
                            style: TextStyle
                              (
                              fontSize: 13.sp,
                              fontFamily: 'poppins-reg',
                              color:Color.fromRGBO(36, 119, 183, 1),

                            ),
                          ),
                          SizedBox(width:0.02.sw),
                          Container(
                            width: 0.16.sw,
                            height: 0.08.sw,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              child: TextFormField(
                                  controller: cont.myController,
                                  keyboardType: TextInputType.phone,
                                  textAlign: TextAlign.center,
                                  style: TextStyle
                                    (
                                    fontFamily: 'poppins',
                                    decoration: TextDecoration.none,
                                    decorationThickness: 0,
                                    fontSize: 15.sp,
                                  ),
                                  decoration: InputDecoration
                                    (
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.black26),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        width: 1, color: Colors.black,),
                                    ),
                                  ),
                                  validator: (value)
                                  {

                                  }
                              ),
                            ),
                          ),//
                          SizedBox(width:0.05.sw), //
                          Text(
                            "Max Price",
                            style: TextStyle
                              (
                              fontSize: 13.sp,
                              fontFamily: 'poppins-reg',
                              color:Color.fromRGBO(36, 119, 183, 1),
                            ),
                          ),
                          SizedBox(width:0.02.sw),
                          Container(
                            width: 0.16.sw,
                            height: 0.08.sw,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              child: TextFormField(
                                  controller: cont.myController2,
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle
                                    (
                                    decoration: TextDecoration.none,
                                    decorationThickness: 0,
                                    fontSize: 15.sp,
                                  ),
                                  decoration: InputDecoration
                                    (
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.black26),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        width: 1, color: Colors.black,),
                                    ),
                                  ),
                                  validator: (value)
                                  {

                                  }
                              ),
                            ),
                          ), //
                        ],
                      ),
                    ),// min max price
                    SizedBox(height: 0.025.sh,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Container(
                            width: 0.4.sw,
                            height: 0.06.sh,
                            child: ElevatedButton(
                                onPressed: () {
                                cont.resetfillters(context);
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all
                                      (Color.fromRGBO(255, 255, 255, 1)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>
                                      (
                                        RoundedRectangleBorder(side: BorderSide
                                          (
                                          width: 2,
                                          color: Color.fromRGBO(183, 36, 36, 1),),
                                          borderRadius: BorderRadius.circular(15.0),
                                        )
                                    )
                                ),
                                child:Container(
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>
                                    [
                                      Icon
                                        (
                                        Icons.close,
                                        color: Color.fromRGBO(183, 36, 36, 1),
                                        size:20.sp,
                                      ),
                                      Text(
                                        "Clear all filters",
                                        style: TextStyle
                                          (
                                          fontFamily: 'poppins',
                                          color: Color.fromRGBO(183, 36, 36, 1),
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            ),
                          ),//
                          SizedBox(width: 0.07.sw,),
                          Container(
                              width: 0.4.sw,
                              height: 0.06.sh,
                              child: ElevatedButton
                                (
                                onPressed: ()
                                {
                                  cont.applay_filtters();
                                },
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all
                                      (Color.fromRGBO(36, 118, 183, 0.9)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        )
                                    )
                                ),
                                child: Text(
                                  "Apllay filters",
                                  style: TextStyle
                                    (
                                    fontFamily: 'poppins',
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                          ),
                        ],
                      ),
                    ),// buttons
                    SizedBox(height: 0.01.sh,),
                    Padding
                      (
                      padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}