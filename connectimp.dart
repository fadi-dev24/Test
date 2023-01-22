import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:screen/pages/homepage/control/jobeartilce.dart';
import 'package:screen/utils/sharedpref.dart';
import 'connect.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as Http;
class connectimp extends connect
{
  final BASE_URL = "https://new.instafluencer.com/api/v1";
  final fcmtoken = "1654654dSDsda6sd4a6sd54";
  @override
  void init()
  {

  }
  Future<String> businnes_reg(String Name, String UserName, String Email, String Number,
      String password, String Licensenumber,String passportimgpath,String licenseimgpath)
  async
  {
    try {
      var request = Http.MultipartRequest('POST', Uri.parse(
          '$BASE_URL/users/auth/register'));
      request.fields['full_name'] = Name;
      request.fields['user_name'] = UserName;
      request.fields['email'] = Email;
      request.fields['phone_number'] = Number;
      request.fields['password'] = password;
      request.fields['trade_license_number'] = Licensenumber;
      request.fields['package_id'] = '1';
      request.fields['user_type'] = 'business';
      request.fields['fcm_token'] = fcmtoken;
      request.files.add(Http.MultipartFile('passport',
          File(passportimgpath).readAsBytes().asStream(),
          File(passportimgpath).lengthSync(),
          filename: passportimgpath
              .split("/")
              .last));
      request.files.add(Http.MultipartFile('trade_license_copy',
          File(licenseimgpath).readAsBytes().asStream(),
          File(licenseimgpath).lengthSync(),
          filename: licenseimgpath
              .split("/")
              .last));
      var res = await request.send();
      final respStr = await res.stream.bytesToString();
      var Data = jsonDecode(respStr.toString());
      print(Data);
      if (Data['isSuccessful'] == true) {
        shaeredpref.setfull_name(Data['data']['full_name']);
        shaeredpref.setuser_name(Data['data']['user_name']);
        shaeredpref.setemail(Data['data']['email']);
        shaeredpref.settrade_license_number(Data['data']['trade_license_number']);
        shaeredpref.setid(Data['data']['id'].toString());
        shaeredpref.setphonenumber(Data['data']['phone_number']);
        shaeredpref.settoken(Data['data']['token']);
        return "good";
      }
      else {
        return Data['message'];
      }
    } on Exception catch(e)
    {
      return "e.toString()";
    }
  }
  @override
  Future<List<jobarticle>> getCards(int index)async
  {
    String? token=shaeredpref.gettoken();
    Response res=await get(Uri.parse('$BASE_URL/jobs?cat=$index'),  headers:{
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    },);
    Map data=jsonDecode(res.body);
    print(data);
    List<jobarticle> list_of_card=<jobarticle>[];
    for(var item in data['data']['data'])
    {
        List<String> lang=<String>[];
        for(var i in item['languages'])
        {
         lang.add(i['name']);
        }
        list_of_card.add(new jobarticle(item['job_title'],item['budget'],item['user']['full_name'],item['due_date']
            ,item['candidates_count'].toString(), item['emirate'],item['user']['logo'],lang));
    }
    return list_of_card;
  }
}