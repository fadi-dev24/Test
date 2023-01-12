import 'package:firbase/views/regester.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'home_page.dart';
late bool is_heddin=false,check=false;
class login extends StatefulWidget
{
  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      body: ScreenUtilInit
      (
        builder: () {
          return SingleChildScrollView
          (
            child: Container(
              alignment: Alignment.center,
              width: 1.sw,
              child: Column
              (
                children: <Widget>
                [
                  Container(
                    height: 0.23.sh,
                    decoration: BoxDecoration
                    (
                      image: DecorationImage(
                        image: AssetImage("image/dev1.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only
                      (
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Stack(
                      children:
                      [
                        Opacity(
                        opacity: 0.9,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0,0.03.sh,0.07.sh,0),
                          child: Container
                          (
                            height: 0.2.sh,
                            decoration: BoxDecoration
                            (
                              image: DecorationImage
                              (
                                image: AssetImage("image/Group.png"),
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
                        Opacity(
                          opacity: 0.9,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0.04.sw,0.19.sh,0,0),
                            child:GestureDetector(
                              onTap: ()
                              {
                              },
                              child: Image
                              (
                                width: 0.05.sw,
                                image: AssetImage('image/Vector.png'),
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                  ),// upper side
                  Container(
                      height: 0.2.sh,
                      width: 0.33.sw,
                      decoration: BoxDecoration
                      (
                        image: DecorationImage
                        (
                          image: AssetImage("image/cc.png"),
                        ),
                      ),
                  ),// image
                  Container(
                    width: 0.87.sw,
                    child:Column
                    (
                      children: <Widget>
                      [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Sign in",
                            style: TextStyle
                            (
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 30.sp,
                            ),
                          ),
                        ),// text
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text
                            (
                            "Log in to use the platform",
                            style: TextStyle
                              (
                              color: Color.fromRGBO(60, 60, 67, 0.5),
                              fontSize: 13.sp,
                            ),
                          ),
                        ),// text
                        Container(
                          child: TextField(
                            style: TextStyle
                            (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                                hintText: 'Username or email',
                                contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                            ),
                          ),
                        ),// input mail
                        Container(
                          child: TextField(
                            obscureText: is_heddin,
                            style: TextStyle
                              (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Password',
                              contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                              suffixIcon: Container
                              (
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
                          ),
                        ),// input pass
                        SizedBox(height: 5,),
                        Container(
                          child: Row
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>
                            [
                              Row(
                                children:
                                [
                                  Container(
                                    width: 20,
                                    height:20,
                                    child:Checkbox
                                    (
                                      value: rememberMe,
                                      onChanged: (bool? value)
                                      {
                                         setState(() {
                                           rememberMe=value!;
                                         });
                                      },
                                    ),
                                  ),
                                  Container(
                                    child: SizedBox(width: 0.01.sw,)
                                  ),
                                  Container(
                                    child: Text
                                    (
                                      "Keep me loged in",
                                      style: TextStyle
                                        (
                                        color: Color.fromRGBO(60, 60, 67, 0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text
                                (
                                  "Forgot password",
                                  style: TextStyle
                                  (
                                    color: Color.fromRGBO(60, 60, 67, 0.5),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),// checkbox
                        SizedBox(height: .07.sh),
                        Container(
                          width: 0.6.sw,
                          height: 0.17.sw,
                          child: ElevatedButton
                            (
                            onPressed: ()
                            {
                              Get.offAll(home());
                            },
                            style: ButtonStyle
                              (
                                backgroundColor: MaterialStateProperty.all
                                  (Color.fromRGBO(36, 118, 183, 1)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(11.0),
                                    )
                                )
                            ),
                            child: Text(
                              "Register",
                              style: TextStyle
                                (
                                fontFamily: 'fo',
                                fontSize: 22.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),// button
                        SizedBox(height: 0.02.sh,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>
                            [
                              Text(
                                "Dont have an account? ",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontFamily: 'foo',
                                  color: Color.fromRGBO(60, 60, 67, 0.5),
                                ),
                              ),
                              InkWell(
                                onTap: ()
                                {
                                  Get.offAll(reg());
                                },
                                child: new Text(
                                  "Register here",
                                  style: TextStyle
                                    (
                                    fontSize: 14.sp,
                                    color:Color.fromRGBO(36, 119, 183, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),// bottom text
                      ],
                    ),
                  ),// form
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
  bool rememberMe = false;
}