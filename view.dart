import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:screen/pages/businessregister/control/control.dart';
import '../../../wedgits/toggler.dart';
import '../../homepage/view/home_page.dart';
var cont=Get.find<regbusinesscontrol>();
final _key=GlobalKey<FormState>();
bool cb=false;
final licensenumber = TextEditingController();
final password = TextEditingController();
final number = TextEditingController();
final email = TextEditingController();
final name = TextEditingController();
final username=TextEditingController();
class regbusiness extends StatefulWidget
{
  const regbusiness({Key? key}) : super(key: key);
  @override
  State<regbusiness> createState() => _regbusinessState();
}
class _regbusinessState extends State<regbusiness>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      resizeToAvoidBottomInset: false,
      body: ScreenUtilInit
        (
        builder: () {
          return SingleChildScrollView
            (
            reverse: true,
            child: Container
              (
              color:Colors.white,
              alignment: Alignment.center,
              width: 1.sw,
              child: Column(
                children: <Widget>
                [
                  Container(
                    child: Container(
                      height: 0.17.sh,
                      decoration: BoxDecoration
                      (
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                          gradient: LinearGradient(
                           begin: Alignment.topCenter,
                           end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(47,208,199,1),
                              Color.fromRGBO(36,118,183,1),
                            ],
                          )
                      ),
                      alignment: Alignment.center,
                      child: Stack(
                        children:
                        [
                          Opacity(
                            opacity: 0.9,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0,0.03.sh,0.04.sh,0),
                              child: Container
                              (
                                decoration: BoxDecoration
                                (
                                  image: DecorationImage
                                   (
                                    image: AssetImage("image/Group.png"),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only
                                    (
                                    bottomRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),// upper side
                  Form(
                    key: _key,
                    child: Container(
                        alignment: Alignment.center,
                        width: 0.9.sw,
                        child: Column(
                          children: [
                            SizedBox(height: 0.02.sh,),
                            toggler(),
                            SizedBox(height: 0.02.sh,),
                            Container(
                              child: TextFormField(
                                controller: name,
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  hintStyle: TextStyle
                                  (
                                    fontSize:14.sp,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  contentPadding: EdgeInsets.fromLTRB(0,0,0,0),
                                ),
                                validator: (value){
                                  if (value?.trim() == "") {
                                    return 'Empty Field!';
                                  }
                                },
                              ),
                            ),// name
                            Container(
                              child: TextFormField(
                                controller: username,
                                style: TextStyle
                                  (
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  hintStyle: TextStyle
                                    (
                                    fontSize:14.sp ,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                validator: (value){
                                  if (value?.trim() == "") {
                                    return 'Empty Field!';
                                  }
                                },
                              ),
                            ),// user name
                            Container(
                              child: TextFormField(
                                controller: email,
                                style: TextStyle
                                  (
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle
                                    (
                                    fontSize:14.sp ,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                validator: (value){
                                  if (!GetUtils.isEmail(value.toString().trim()))
                                  {
                                    return 'Invalid email format';
                                  }
                                },
                              ),
                            ),// mail
                            Container(
                              child: TextFormField(
                                controller: number,
                                keyboardType: TextInputType.phone,
                                style: TextStyle
                                  (
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Contact Number',
                                  hintStyle: TextStyle
                                  (
                                    fontSize:14.sp ,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                validator: (value){
                                    if (value?.trim() == "") {
                                      return 'Empty Field!';
                                    }
                                  if (!GetUtils.isPhoneNumber(value)) {
                                    return 'invalid number format!';
                                  }
                                },
                              ),
                            ),// number
                            Container(
                              child: TextFormField(
                                controller: password,
                                obscureText: is_heddin,
                                style: TextStyle
                                (
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle
                                    (
                                    fontSize:14.sp ,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                  suffixIcon: Container(
                                    margin: EdgeInsets.fromLTRB(0,15,0,0),
                                    child: InkWell(
                                      onTap: _togglePasswordView,  /// This is Magical Function
                                      child: Icon(
                                        is_heddin ?         /// CHeck Show & Hide.
                                        Icons.visibility :
                                        Icons.visibility_off,
                                      ),
                                    ),
                                  ),
                                ),
                                validator: (value){
                                  if (value.toString().trim()=="") {
                                    return 'Empty Field!';
                                  }
                                },
                              ),
                            ),// password
                            Container(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                controller: licensenumber,
                                style: TextStyle
                                  (
                                  color: Colors.grey,
                                  decoration: TextDecoration.none,
                                  decorationThickness: 0,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'License Number',
                                  hintStyle: TextStyle
                                    (
                                    fontSize:14.sp ,
                                    color: Color.fromRGBO(77,60,60,0.3),
                                    fontFamily: 'poppinslight',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                validator: (value){
                                  if (value?.trim() == "") {
                                    return 'Empty Field!';
                                  }
                                  if (!GetUtils.isNum(value)) {
                                    return 'invalid number format';
                                  }
                                },
                              ),
                            ),// licence number
                            SizedBox(height: 0.01.sh,),
                            Container(
                              child: Row
                                (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                [
                                  Container(
                                    width: 0.44.sw,
                                    height: 0.1.sw,
                                    child: ElevatedButton
                                      (
                                        onPressed: ()
                                        {
                                          cont.get_passport_img();
                                        },
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all
                                              (Color.fromRGBO(36, 118, 183, 1)),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                )
                                            )
                                        ),
                                        child: Row(
                                          children: [
                                            Image(image: AssetImage('image/cloud.png')),
                                            SizedBox(width: 0.01.sw,),
                                            Text(
                                              "Upload Passport/ID",
                                              style: TextStyle
                                                (
                                                fontFamily: 'poppins-reg',
                                                color: Colors.white,
                                                fontSize: 7.sp,
                                              ),
                                            ),
                                            Text(
                                              " (optional)",
                                              style: TextStyle
                                              (
                                                fontFamily: 'poppins-reg',
                                                fontSize: 6.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ),
                                  Container(
                                    width: 0.44.sw,
                                    height: 0.1.sw,
                                    child: ElevatedButton(
                                        onPressed: ()
                                        {
                                          cont.get_license_img();
                                        },
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all
                                              (Color.fromRGBO(36, 118, 183, 1)),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                )
                                            )
                                        ),
                                        child: Row(
                                          children:
                                          [
                                            Image(image: AssetImage('image/cloud.png')),
                                            SizedBox(width: 0.02.sw,),
                                            Text(
                                              "Upload Trade License",
                                              style: TextStyle
                                                (
                                                fontFamily: 'poppins-reg',
                                                color: Colors.white,
                                                fontSize: 8.sp,
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),// two buttons
                            SizedBox(height: 0.01.sh,),
                            Container(
                              child: Row
                                (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                [
                                  Container(
                                    width: 0.44.sw,
                                    height: 0.1.sw,
                                    child: ElevatedButton
                                      (
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all
                                              (Color.fromRGBO(36, 118, 183, 1)),
                                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10.0),
                                                )
                                            )
                                        ),
                                        child: Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:
                                            [
                                              Row(
                                                children:
                                                [
                                                  Text(
                                                    "Select subscription",
                                                    style: TextStyle
                                                      (
                                                      fontFamily: 'poppins-reg',
                                                      color: Colors.white,
                                                      fontSize: 8.sp,
                                                    ),
                                                  ),
                                                  Text(
                                                    " (optional)",
                                                    style: TextStyle
                                                      (
                                                      fontFamily: 'poppins-reg',
                                                      color: Colors.white,
                                                      fontSize: 6.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                decoration: BoxDecoration
                                                  (
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(15))
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(0.0),
                                                  child: Icon(
                                                    size: 14.sp,
                                                    Icons.keyboard_arrow_right_rounded,
                                                    color:Color.fromRGBO(36, 119, 183, 1),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children:<Widget>
                                      [
                                        Container(
                                          width:20.sp,
                                          height:20.sp,
                                          child: Checkbox(
                                            value: !cb,
                                            onChanged: (bool? value)
                                            {
                                              setState(() {
                                                cb=!value!;
                                              });
                                            },
                                          ),
                                        ),
                                        SizedBox(width: 0.01.sw,),
                                        Text(
                                          "I agree with our ",
                                          style: TextStyle
                                            (
                                            fontFamily: 'poppins',
                                            color:Color.fromRGBO(163,163,163, 1),
                                            fontSize: 6.sp,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: ()
                                          {
                                          },
                                          child: new Text(
                                            "Terms",
                                            style: TextStyle
                                              (
                                              color:Color.fromRGBO(36, 119, 183, 1),
                                              fontFamily: 'poppins',
                                              fontSize: 7.sp,

                                            ),
                                          ),
                                        ),
                                        Text(
                                          " and ",
                                          style: TextStyle
                                            (
                                            fontFamily: 'poppins',
                                            fontSize: 6.sp,
                                            color:Color.fromRGBO(163, 163, 163, 1),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: ()
                                          {
                                          },
                                          child: new Text(
                                            "Condetions",
                                            style: TextStyle
                                              (
                                              fontFamily: 'poppins',
                                              fontSize: 7.sp,
                                              color:Color.fromRGBO(36, 119, 183, 1),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 0.02.sw,),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),// two buttons
                            SizedBox(height: 0.015.sh,),
                            Container(
                              width: 0.65.sw,
                              height: 0.13.sw,
                              child: ElevatedButton
                                (
                                onPressed: ()async
                                {
                                  if (_key.currentState!.validate())
                                  {
                                     showDialog(context: context, barrierDismissible: false,builder: (context)
                                     {
                                      return Center(child:CircularProgressIndicator());
                                     });
                                     String op=await cont.regasbusiness(name.text.toString().trim(),username.text.toString().trim(), email.text.toString().trim(),number.text.toString().trim(), password.text.toString().trim(),licensenumber.text.toString().trim()) as String;
                                     Navigator.of(context, rootNavigator: true).pop('dialog');
                                     if(op=="good")
                                       Get.offAll(home());
                                     else
                                       Get.snackbar(
                                         op,
                                         "",
                                         snackPosition: SnackPosition.BOTTOM,
                                         backgroundColor: Colors.white,
                                         borderRadius: 15,
                                         margin: EdgeInsets.all(20),
                                         colorText: Color.fromRGBO(36, 118, 183, 1),
                                         isDismissible: true,
                                         dismissDirection: SnackDismissDirection.HORIZONTAL,
                                         forwardAnimationCurve: Curves.easeOutBack,
                                       );
                                  }
                                },
                                style: ButtonStyle
                                  (
                                    backgroundColor: MaterialStateProperty.all
                                      (Color.fromRGBO(36, 118, 183, 1)),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(13.0),
                                        )
                                    )
                                ),
                                child: Text(
                                  "Create account",
                                  style: TextStyle
                                    (
                                    fontFamily: 'poppins',
                                    fontSize: 17.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),// button
                            SizedBox(height: 0.01.sh,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>
                                [
                                  Text(
                                    "Allready have an account? ",
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                      fontFamily: 'poppins',
                                      color: Color.fromRGBO(163,163, 163,1),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: ()
                                    {
                                  //    Get.offAll(login());
                                    },
                                    child: new Text(
                                      "Login",
                                      style: TextStyle
                                        (
                                        fontSize: 11.sp,
                                        fontFamily: 'poppins',
                                        color:Color.fromRGBO(36, 119, 183, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),// text
                            SizedBox(height: 0.02.sh,),
                            Container(
                                child:Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:
                                  [
                                    Container(
                                      height:0.001.sh,
                                      width: 0.28.sw,
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                    ),
                                    Text(
                                      "Or continue with ",
                                      style: TextStyle
                                        (
                                        fontSize:11.sp ,
                                        color: Color.fromRGBO(70, 70, 60, 0.6),
                                        fontFamily: 'poppinslight',
                                      ),
                                    ),
                                    Container(
                                      height:0.001.sh,
                                      width: 0.26.sw,
                                      color: Color.fromRGBO(217, 217, 217, 1),
                                    ),
                                  ],
                                )
                            ),// devider
                            SizedBox(height: 0.01.sh,),
                            Container(
                              width: 0.25.sw,
                              child: Row
                                (
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                [
                                  Container(
                                    width: 40.sp,
                                    height: 40.sp,
                                    child: CircleAvatar(
                                      radius: 22.sp,
                                      backgroundColor: Color.fromRGBO(36, 118, 183, 1),
                                      child: CircleAvatar
                                        (
                                          radius: 19.sp,
                                          backgroundColor:Colors.white,
                                          child:Image
                                            (
                                            image:AssetImage("image/facebook.png"),
                                          )
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 40.sp,
                                    height: 40.sp,
                                    child:CircleAvatar(
                                      radius: 22.sp,
                                      backgroundColor: Color.fromRGBO(183, 36, 36, 1),
                                      child: CircleAvatar
                                        (
                                          radius: 19.sp,
                                          backgroundColor:Colors.white,
                                          child:Image
                                            (
                                            image:AssetImage("image/google.png"),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),// google and facebook
                          ],
                        )
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  void _togglePasswordView()
  {
    setState(() {is_heddin = !is_heddin;});
  }
  bool is_heddin = false;
}