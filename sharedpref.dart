import 'package:shared_preferences/shared_preferences.dart';
class shaeredpref
{
  static SharedPreferences pref=SharedPreferences as SharedPreferences;
  static Future init()async => pref=await SharedPreferences.getInstance();
  static Future setfull_name(String full_name) async => await pref.setString("name",full_name);
  static String? getfull_name() => pref.getString("name");
  static Future setuser_name(String user_name) async => await pref.setString("username",user_name);
  static String? getuser_name() => pref.getString("username");
  static Future setemail(String email) async => await pref.setString("email",email);
  static String? getemail() => pref.getString("email");
  static Future setphonenumber(String phonenumber) async => await pref.setString("phonenumber",phonenumber);
  static String? getphonenumber() => pref.getString("phonenumber");
  static Future settrade_license_number(String trade_license_number) async => await pref.setString("trade_license_number",trade_license_number);
  static String? gettrade_license_number() => pref.getString("trade_license_number");
  static Future setid(String id) async => await pref.setString("id",id.toString());
  static String? getid() => pref.getString("id");
  static Future settoken(String token) async => await pref.setString("token",token);
  static String? gettoken() => pref.getString("token");
  static Future clear()async
  {
    pref.clear();
  }
}