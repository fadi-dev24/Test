import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class fill extends StatefulWidget
{
  @override
  State<fill> createState() => _fillState();
}
bool rememberMe=false;
bool rememberMe2=false;
bool rememberMe3=false;
bool rememberMe4=false;
bool drop=true;
bool drop2=true;
bool drop3=false;
bool drop4=false;
bool drop5=false;
Map tmap = {'English':false, 'French': false, 'Arabic': false, 'Chinese': false};
Map fmap = {'Youtobe':false, 'Linkedin': false, 'Twitter': false, 'Facebook': false};
Map smap = {'Dubai':false, 'Abo Dabhi': false, 'Ajman': false};
class _fillState extends State<fill>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (

      backgroundColor:Color.fromRGBO(239, 241, 245, 1),
      body: ScreenUtilInit
      (
        builder: ()
        {
          return SingleChildScrollView
          (
            child: Container
            (
              alignment: Alignment.center,
              width: 1.sw,
              child: Container
                (
                padding: EdgeInsets.fromLTRB(10,0,10,0),
                child: Column
                  (
                  children:
                  [
                    SizedBox(height: 0.03.sh,),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {drop=!drop;});
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
                                  drop?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_left_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    SizedBox(height: 0.016.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text
                        (
                        "What are you looking for?!",
                        style: TextStyle
                          (
                          color: Colors.black.withOpacity(0.4),
                          fontSize: 17.sp,
                        ),
                      ),
                    ),// text
                    SizedBox(height:  0.01.sh,),
                    AnimatedSize(
                      duration: Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child: Container(
                        height: drop?40:0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        child: Padding
                          (
                          padding: EdgeInsets.fromLTRB(0,0,0,22.sp),
                          child: TextField
                            (
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.fromLTRB(10,10,0,0),
                                child:drop?Icon
                                  (
                                  Icons.search,
                                ):Container(),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minHeight: 10,
                                minWidth: 10,
                              ),
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle
                                (
                                fontSize: 15,
                              ),
                              contentPadding: EdgeInsets.fromLTRB(0,10,0,0),
                            ),
                          ),
                        ),
                      ),
                    ),// search
                    SizedBox(height: 0.01.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sort by date",
                        style: TextStyle
                          (
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp,
                        ),
                      ),
                    ),// text
                    SizedBox(height:0.01.sh,),
                    Container(
                      decoration: BoxDecoration
                      (
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                          padding: EdgeInsets.all(7),
                          child: Container(
                             decoration: BoxDecoration
                             (
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(15)),
                                 boxShadow: [
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 18.sp,
                                spreadRadius: 18.sp
                            )
                          ],
                             ),
                             child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>
                            [
                              Row(
                                children:
                                [
                                  Container
                                    (
                                    width: 20,
                                    height:20,
                                    child: Checkbox
                                      (
                                      shape: CircleBorder(),
                                      value: rememberMe,
                                      onChanged: (bool? value)
                                      {
                                        setState(() { rememberMe=true;
                                        });
                                      },
                                    ),
                                  ),
                                  Container
                                    (
                                    child: SizedBox ( width:0.02.sw ), ),
                                  Container(
                                    child: Text
                                      (
                                      "newest to Oldest",
                                      style: TextStyle
                                        (
                                        fontSize: 17.sp,
                                        color: Colors.black.withOpacity(0.6),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children:
                                [
                                  Container
                                    (
                                    width: 20,
                                    height:20,
                                    child: Checkbox
                                      (
                                      shape: CircleBorder(),
                                      value: !rememberMe,
                                      onChanged: (bool? value)
                                      {
                                        setState(() { rememberMe=false;
                                      });
                                        },
                                    ),
                                  ),
                                  Container
                                    (
                                    child: SizedBox ( width:0.02.sw ), ),
                                  Container(
                                    child: Text
                                      (
                                      "Oldest to newest",
                                      style: TextStyle
                                        (
                                        fontSize: 17.sp,
                                        color: Colors.black.withOpacity(0.6),
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
                      child: Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:
                        [
                          Text(
                            "Business Category",
                            style: TextStyle
                              (
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {drop2=!drop2;});
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
                                  drop2?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    SizedBox(height: 0.01.sh,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      padding: EdgeInsets.all(drop2?5:0),
                      child: AnimatedSize(
                        duration: Duration(milliseconds: 450),
                        curve: Curves.slowMiddle,
                        child: Container(
                          height: drop2?0.12.sh:0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: drop2?9.sp:0,
                                  spreadRadius: drop2?9.sp:0,)
                            ],
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
                                        value: rememberMe3,
                                        onChanged: (bool? value)
                                        {
                                          setState(()
                                          {
                                            rememberMe3=value!;
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
                                          fontSize: 17.sp,
                                          color: Colors.black.withOpacity(0.6),
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
                                        value: rememberMe4,
                                        onChanged: (bool? value)
                                        {
                                          setState(() {
                                            rememberMe4=value!;
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
                                          fontSize: 17.sp,
                                          color: Colors.black.withOpacity(0.6),
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
                    SizedBox(height: 0.01.sh,),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {drop3=!drop3;});
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
                                  drop3?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    SizedBox(height: 0.01.sh,),
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:drop3?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                      width: drop3?20.sp:0,
                                      height:drop3?20.sp:0,
                                      child:drop3?Checkbox(
                                        value: tmap['English'],
                                        onChanged: (bool? value) {
                                          setState(()
                                          {
                                            tmap['English']= value!;
                                          });
                                        },
                                      ):Container()
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "English",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop3?20.sp:0,
                                    height:drop3?20.sp:0,
                                    child:drop3?Checkbox(
                                      value: tmap['French'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          tmap['French']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "French",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop3?20.sp:0,
                                    height:drop3?20.sp:0,
                                    child:drop3?Checkbox(
                                      value: tmap['Arabic'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          tmap['Arabic']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Arabic",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop3?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop3?20.sp:0,
                                    height:drop3?20.sp:0,
                                    child:drop3?Checkbox(
                                      value:tmap['Chinese'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          tmap['Chinese']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Chinese",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):Row
                        (
                        children: tmap.entries.map((e)
                        {
                          if(e.value==true)
                            return fadi(e);
                          else
                            return Container();
                        }).toList(),
                      ),
                    ),//check boxes3
                    SizedBox(height: 0.01.sh,),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {drop4=!drop4;});
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
                                  drop4?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    SizedBox(height: 0.01.sh,),
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:drop4?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                      width: drop4?20.sp:0,
                                      height:drop4?20.sp:0,
                                      child:drop4?Checkbox(
                                        value: fmap['Youtobe'],
                                        onChanged: (bool? value) {
                                          setState(()
                                          {
                                            fmap['Youtobe']= value!;
                                          });
                                        },
                                      ):Container()
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Youtobe",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop4?20.sp:0,
                                    height:drop4?20.sp:0,
                                    child:drop4?Checkbox(
                                      value: fmap['Linkedin'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          fmap['Linkedin']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Linkedin",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop4?20.sp:0,
                                    height:drop4?20.sp:0,
                                    child:drop4?Checkbox(
                                      value: fmap['Twitter'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          fmap['Twitter']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Twitter",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop4?20.sp:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop4?20.sp:0,
                                    height:drop4?20.sp:0,
                                    child:drop4?Checkbox(
                                      value:fmap['Facebook'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          fmap['Facebook']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      " "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Facebook",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):Row
                        (
                        children: fmap.entries.map((e)
                        {
                          if(e.value==true)
                            return sami(e);
                          else
                            return Container();
                        }).toList(),
                      ),
                    ),// check boxes4
                    SizedBox(height: 0.01.sh,),
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
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                          InkWell(
                            onTap: ()
                            {
                              setState(() {drop5=!drop5;});
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
                                  drop5?Icons.keyboard_arrow_down_rounded: Icons.keyboard_arrow_right_rounded,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),// text
                    SizedBox(height: 0.01.sh,),
                    AnimatedSize(
                      duration:Duration(milliseconds: 450),
                      curve: Curves.slowMiddle,
                      child:drop5?Column(
                        children: <Widget>
                        [
                          Container(
                            margin:EdgeInsets.all(5),
                            height: drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop5?0.020.sw:0,
                                    height:drop5?0.020.sh:0,
                                    child:drop5?Checkbox(
                                      shape: CircleBorder(),
                                      value: smap['Dubai'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          smap['Dubai']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      "  "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Dubai",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height:drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop5?0.020.sw:0,
                                    height:drop5?0.020.sh:0,
                                    child:drop5?Checkbox(
                                      shape: CircleBorder(),
                                      value: smap['Abo Dabhi'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          smap['Abo Dabhi']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      "  "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Abo Dabhi",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:EdgeInsets.all(5),
                            height:drop5?0.020.sh:0,
                            child: Row(
                              children:<Widget>
                              [
                                AnimatedSize(
                                  duration:Duration(milliseconds: 450),
                                  curve: Curves.slowMiddle,
                                  child: Container(
                                    width: drop5?0.020.sw:0,
                                    height:drop5?0.020.sh:0,
                                    child:drop5?Checkbox(
                                      shape: CircleBorder(),
                                      value:smap['Ajman'],
                                      onChanged: (bool? value)
                                      {
                                        setState(()
                                        {
                                          smap['Ajman']=value!;
                                        });
                                      },
                                    ):Container(),
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                      "  "
                                  ),
                                ),
                                Container(
                                  child: Text
                                    (
                                    "Ajman",
                                    style: TextStyle
                                      (
                                      fontSize: 15.sp,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ):Row(
                        children: smap.entries.map((e)
                        {
                          if(e.value==true)
                            return shadi(e);
                          else
                            return Container();
                        }).toList(),
                      ),
                    ),// check boxes5
                    SizedBox(height: 0.015.sh,),
                    Container(
                      alignment: Alignment.topLeft,
                      child:Text(
                        "Price",
                        style: TextStyle
                          (
                          fontWeight: FontWeight.bold,
                          fontSize: 19.sp,
                        ),
                      ),
                    ),// text
                    SizedBox(height: 0.03.sh,),
                    Container(
                      child: Row
                      (
                        children:
                        [
                          Text(
                            "Min Price",
                            style: TextStyle
                              (
                              fontSize: 17.sp,
                              fontFamily: 'fo',
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
                                  keyboardType: TextInputType.phone,
                                  textAlign: TextAlign.center,
                                  style: TextStyle
                                   (
                                    decoration: TextDecoration.none,
                                    decorationThickness: 0,
                                    fontSize: 20.sp,
                                  ),
                                  decoration: InputDecoration
                                    (
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.black26),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
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
                              fontSize: 17.sp,
                              fontFamily: 'fo',
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
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.phone,
                                  style: TextStyle
                                    (
                                    decoration: TextDecoration.none,
                                    decorationThickness: 0,
                                    fontSize: 20.sp,
                                  ),
                                  decoration: InputDecoration
                                    (
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.white,
                                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.black26),
                                      borderRadius: BorderRadius.circular(11),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(11),
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
                    ),
                    SizedBox(height: 0.05.sh,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                          Container(
                            width: 0.39.sw,
                            height: 0.07.sh,
                            child: ElevatedButton
                              (
                              onPressed: ()
                              {

                              },
                              style: ButtonStyle
                                (
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
                              child: Row
                              (
                                children: <Widget>
                                [
                                  Icon(
                                    Icons.close,
                                    color: Color.fromRGBO(183, 36, 36, 1),
                                    size: 20.sp,
                                  ),
                                  SizedBox(width:0.01.sw),
                                  Text(
                                  "Clear all filters",
                                  style: TextStyle
                                  (
                                    color: Color.fromRGBO(183, 36, 36, 1),
                                    fontSize: 13.sp,
                                  ),
                                ),
                                ],
                              ),
                            ),
                          ),//
                          SizedBox(width: 0.07.sw,),
                          Container(
                            width: 0.39.sw,
                            height: 0.07.sh,
                            child: ElevatedButton
                              (
                              onPressed: ()
                              {

                              },
                              style: ButtonStyle
                                (
                                  backgroundColor: MaterialStateProperty.all
                                    (Color.fromRGBO(36, 118, 183, 0.9)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                      )
                                  )
                              ),
                              child: Text(
                                    "Apllay filters",
                                    style: TextStyle
                                      (
                                      fontSize: 13.sp,
                                      color: Colors.white,
                                    ),
                                  ),
                              )
                            ),
                        ],
                      ),
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
  Widget fadi(e)//  function for maping langeuages
  {
    return  Container(
      margin:EdgeInsets.all(5.sp),
      height: 0.02.sh,
      child: Row(
        children:<Widget>
        [
          SizedBox(width:0.03.sw),
          Container(
            width: 0.015.sw,
            height:0.015.sh,
            child:Checkbox
              (
              value: tmap[e.key],
              onChanged: (bool? value)
              {
                setState(()
                {
                  tmap[e.key] = value!;
                });
              },
            ),
          ),
          SizedBox(width:0.03.sw),
          Container(
            child: Text
              (
              e.key,
              style: TextStyle
                (
                fontSize: 15.sp,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget sami(e)//  function for maping social media
  {
    return  Container(
      margin:EdgeInsets.all(5.sp),
      height: 0.022.sh,
      child: Row(
        children:<Widget>
        [
          SizedBox(width:0.03.sw),
          Container(
            width: 0.020.sw,
            height:0.03.sh,
            child:Checkbox
              (
              value: fmap[e.key],
              onChanged: (bool? value)
              {
                setState(()
                {
                  fmap[e.key] = value!;
                });
              },
            ),
          ),
          SizedBox(width:0.03.sw),
          Container(
            child: Text
              (
              e.key,
              style: TextStyle
                (
                fontSize: 15.sp,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget shadi(e)// function for maping city names
  {
    return  Container(
      margin:EdgeInsets.all(5.sp),
      height: 0.022.sh,
      child: Row(
        children:<Widget>
        [
          SizedBox(width:0.03.sw),
          Container(
            height: 0.020.sh,
            width: 0.020.sw,
            child:Checkbox
              (
              shape: CircleBorder(),
              value: smap[e.key],
              onChanged: (bool? value)
              {
                setState(()
                {
                  smap[e.key] = value!;
                });
              },
            ),
          ),
          SizedBox(width:0.03.sw),
          Container(
            child: Text
              (
              e.key,
              style: TextStyle
                (
                fontSize: 15.sp,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}