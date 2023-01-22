import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../homepage/view/home_page.dart';
import '../fillter_reposate/fillterrepoimp.dart';
class filltercontrol extends GetxController
{
  String location="";
  bool drop=true;
  bool drop2=true;
  bool drop3=false;
  bool drop4=false;
  bool drop5=false;
  bool rememberMe3=false;
  bool rememberMe4=false;
  final myController = TextEditingController();
  final myController2 = TextEditingController();
  final searchController = TextEditingController();
  Map tmap = {'English':false, 'French': false, 'Arabic': false, 'Chinese': false};
  Map fmap = {'Youtobe':false, 'Linkedin': false, 'Twitter': false, 'Facebook': false};
  int groupValue = 0;
  int groupValue2 = 0;
  var conn=Get.put(fillterepoimp());
  void rebuildAllChildren(BuildContext context)
  {
    void rebuild(Element el)
    {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }
    (context as Element).visitChildren(rebuild);
  }
  Widget maplanguage(e)
  {
    return  Container
      (
      height: 0.05.sh,
      child: Row(
        children:<Widget>
        [
          SizedBox(width:0.02.sw),
          Container(
            width: 0.015.sw,
            child:Checkbox
            (
              value: tmap[e.key],
              onChanged: (bool? value)
              {

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
                fontFamily: 'poppins-reg',
                fontSize: 10.sp,
                color: Color.fromRGBO(60, 60, 67, 0.5),
              ),
            ),
          ),
          SizedBox(width:0.03.sw),
        ],
      ),
    );
  }
  Widget mapsocailmedia(e)
  {
    return  Container(
      height: 0.05.sh,
      child: Row(
        children:<Widget>
        [
          SizedBox(width:0.02.sw),
          Container(
            width: 0.02.sw,
            child:Checkbox
              (
              value: fmap[e.key],
              onChanged: (bool? value)
              {
              },
            ),
          ),
          SizedBox(width:0.03.sw),
          Container(
            padding: EdgeInsets.fromLTRB(0,0,0,3.sp),
            child: Text
              (
              e.key,
              style: TextStyle
                (
                fontFamily: 'poppins-reg',
                fontSize: 10.sp,
                color: Color.fromRGBO(60, 60, 67, 0.5),
              ),
            ),
          ),
          SizedBox(width:0.03.sw),
        ],
      ),
    );
  }
  Widget locationmap()
  {
    if(groupValue2==0)
       return Container();
    return Container(
      margin:EdgeInsets.all(5),
      child: Row(
        children:<Widget>
        [
          AnimatedSize(
            duration:Duration(milliseconds: 450),
            curve: Curves.slowMiddle,
            child: Container(
              width: 0.020.sw,
              height:0.020.sh,
              child:Radio
              (
                groupValue:groupValue2,
                value:groupValue2 ,
                onChanged: (newvalue) {},
              ),
            ),
          ),
          SizedBox(
            width: 0.025.sw,
          ),
          Container(
            child: Text
            (
              location,
              style: TextStyle
                (
                fontFamily: 'poppins-ref',
                fontSize: 10.sp,
                color: Color.fromRGBO(60, 60, 67, 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
  void resetfillters(context)
  {
    location="";
    fmap.keys.forEach((k) => fmap[k]=false);
    tmap.keys.forEach((k) => tmap[k]=false);
    groupValue=0;
    groupValue2=0;
    rememberMe3=false;
    rememberMe4=false;
    myController.text="";
    myController2.text="";
    searchController.text="";
    rebuildAllChildren(context);
  }
  void applay_filtters()
  {
    if(conn.applay_fillter());
       Get.offAll(home());
  }
}