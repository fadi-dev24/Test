import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import '../repo/reposate_imp.dart';
var imp=Get.find<regasbusinessimp>();
class regbusinesscontrol extends GetxController
{
  String passport_img_path="";
  String licence_img_path="";
  bool passport_img=false ;
  bool licence_img=false ;
  void get_passport_img()async {
    try
    {
      ImagePicker myimagePicker = ImagePicker();
      XFile passportimage = (await myimagePicker.pickImage(source: ImageSource.gallery))!;
      String? type=lookupMimeType(passportimage.path);
      var fileType = type?.split('/');
      if(fileType![0]!='image')
      {
        Get.snackbar(
          "Passport image was not uploaded",
          "some thing went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          borderRadius: 15,
          margin: EdgeInsets.all(20),
          colorText:  Color.fromRGBO(36,118,183,1),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
        return;
      }
      passport_img_path=passportimage.path;
      passport_img=true;
      Get.snackbar
      (
        "Passport image uploaded",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        borderRadius: 15,
        margin: EdgeInsets.all(20),
        colorText:  Color.fromRGBO(36,118,183,1),
        isDismissible: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
    on Exception catch(e)
    {
      passport_img=false;
      Get.snackbar
        (
        "image was not uploaded",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        borderRadius: 15,
        margin: EdgeInsets.all(20),
        colorText:  Color.fromRGBO(47,208,199,1),
        isDismissible: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }
  void get_license_img()async {
    try
    {
      ImagePicker myimagePicker = ImagePicker();
      XFile lisenceimage = (await myimagePicker.pickImage(source: ImageSource.gallery))!;
      String? type=lookupMimeType(lisenceimage.path);
      var fileType = type?.split('/');
      if(fileType![0]!='image'){
        Get.snackbar(
          "lisence image was not uploaded",
          "some thing went wrong",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          borderRadius: 15,
          margin: EdgeInsets.all(20),
          colorText:  Color.fromRGBO(36,118,183,1),
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.easeOutBack,
        );
        return;
      }
      licence_img_path=lisenceimage.path;
      licence_img=true;
      Get.snackbar
        (
        "License uploaded",
        "",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        borderRadius: 15,
        margin: EdgeInsets.all(20),
        colorText:  Color.fromRGBO(36,118,183,1),
        isDismissible: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
    on Exception catch(e)
    {
      licence_img=false;
      Get.snackbar
        (
        "license was not uploaded",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        borderRadius: 15,
        margin: EdgeInsets.all(20),
        colorText:  Color.fromRGBO(47,208,199,1),
        isDismissible: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.easeOutBack,
      );
    }
  }
  Future<String> regasbusiness(String Name,String UserName,String Email,String Number, String password, String Licensenumber)
  async {
    if(!licence_img)
      return "license image was not uploaded";
    if(!passport_img)
      return  "passport image was not uploaded";
    //////////
   String op=await imp.reg_business(Name,UserName,Email,Number,password,Licensenumber,passport_img_path,licence_img_path) as String;
   return op;
  }
}