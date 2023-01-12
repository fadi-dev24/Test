import 'package:firbase/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import  'home_page.dart';
bool colo=true,cb=false;
String name="Business";
class reg extends StatefulWidget
{
  const reg({Key? key}) : super(key: key);

  @override
  State<reg> createState() => _regState();
}
class _regState extends State<reg>
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
                    child: Container(
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
                        ],
                      ),
                    ),
                  ),// upper side
                  Container(
                    alignment: Alignment.center,
                    width: 0.9.sw,
                    child: Column
                    (
                      children:
                      [
                        SizedBox(height: 0.02.sh,),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "$name Registeration",
                            style: TextStyle
                              (
                              color: Color.fromRGBO(16, 51, 80,1),
                              fontWeight: FontWeight.bold,
                              fontSize: 19.sp,
                            ),
                          ),
                        ),// text
                        SizedBox(height: 0.003.sh,),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text
                            (
                            "Please fill in the form to register.",
                            style: TextStyle
                              (
                              color: Color.fromRGBO(163, 163, 163, 1),
                              fontSize: 17.sp,
                            ),
                          ),
                        ),// text
                        SizedBox(height: 0.004.sh,),
                        Container(
                          width: .88.sw,
                          height: 0.06.sh,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 241, 245, 1),
                              borderRadius: BorderRadius.all(Radius.circular(9))),
                          child: Container(
                            padding: EdgeInsets.all(2),
                            child: Row
                            (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:
                              [
                               GestureDetector(
                                 onTap: ()
                                 {
                                   setState(()
                                   {
                                     if(name=="Influencer")
                                     {
                                       name = "Business";
                                       colo=!colo;
                                     }
                                   });
                                 },
                                  child: Container(
                                    width: .43.sw,
                                    height: 0.05.sh,
                                    decoration: BoxDecoration
                                    (
                                        color: colo?Colors.white: Color.fromRGBO(239, 241, 245, 1),
                                        borderRadius: BorderRadius.all(Radius.circular(9))
                                    ),
                                    child: Center(
                                      child: Text
                                        (
                                        "Business",
                                        style: TextStyle
                                          (
                                          color:  Color.fromRGBO(16, 51, 80,1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                               GestureDetector(
                                  onTap: ()
                                  {
                                    setState(()
                                    {
                                      if(name=="Business")
                                        {
                                          name="Influencer";
                                          colo=!colo;
                                        }
                                    });
                                  },
                                  child: Container(
                                    width: .43.sw,
                                    height: 0.05.sh,
                                    decoration: BoxDecoration(
                                        color: colo? Color.fromRGBO(239, 241, 245, 1):Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(9))
                                    ),
                                    child: Center(
                                      child: Text
                                        (
                                        "Influencer",
                                        style: TextStyle
                                          (
                                          color:  Color.fromRGBO(16, 51, 80,1),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),// toggler
                        SizedBox(height: 0.01.sh,),
                        Container(
                          child: TextField(
                            style: TextStyle
                              (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Full Name',
                              contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                            ),
                          ),
                        ),// name
                        Container(
                          child: TextField(
                            style: TextStyle
                              (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Username',
                              contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                            ),
                          ),
                        ),// user name
                        Container(
                          child: TextField(
                            style: TextStyle
                              (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                            ),
                          ),
                        ),// mail
                        Container(
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            style: TextStyle
                              (
                              color: Colors.grey,
                              decoration: TextDecoration.none,
                              decorationThickness: 0,
                            ),
                            decoration: InputDecoration(
                              hintText: 'Contact Number',
                              contentPadding: EdgeInsets.fromLTRB(0,20,0,0),
                            ),
                          ),
                        ),// number
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
                        ),//  password
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

                                  },
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all
                                        (Color.fromRGBO(36, 118, 183, 1)),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(11.0),
                                          )
                                      )
                                  ),
                                  child: Row
                                    (
                                    children:
                                    [
                                      Image(image: AssetImage('image/cloud.png')),
                                      SizedBox(width: 0.02.sw,),
                                      Text(
                                        "Upload Password/ID ",
                                        style: TextStyle
                                          (

                                          fontSize: 7.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "(optional)",
                                        style: TextStyle
                                          (
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
                                child: ElevatedButton
                                  (
                                    onPressed: ()
                                    {

                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all
                                          (Color.fromRGBO(36, 118, 183, 1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(11.0),
                                            )
                                        )
                                    ),
                                    child: Row
                                      (
                                      children:
                                      [
                                        Image(image: AssetImage('image/cloud.png')),
                                        SizedBox(width: 0.02.sw,),
                                        Text(
                                          "Upload Trade License",
                                          style: TextStyle
                                            (
                                            fontFamily: 'fo',
                                            fontSize: 10.sp,
                                            color: Colors.white,
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
                                    onPressed: ()
                                    {

                                    },
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all
                                          (Color.fromRGBO(36, 118, 183, 1)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(11.0),
                                            )
                                        )
                                    ),
                                    child: Row
                                      (
                                      children:
                                      [
                                        Text(
                                          "Select subscription ",
                                          style: TextStyle
                                            (
                                            fontSize: 9.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "(optional) ",
                                          style: TextStyle
                                            (
                                            fontSize: 6.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 0.02.sw,),
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
                                    )
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    SizedBox(width: 0.02.sw,),
                                    Text(
                                      "I agree with our ",
                                      style: TextStyle(
                                        fontSize: 7.sp,
                                        color: Color.fromRGBO(60, 60, 67, 0.5),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: ()
                                      {
                                      },
                                      child: new Text(
                                        "terms",
                                        style: TextStyle
                                          (
                                          fontSize: 7.sp,
                                          color:Color.fromRGBO(36, 119, 183, 1),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " and ",
                                      style: TextStyle(
                                        fontSize: 7.sp,
                                        color: Color.fromRGBO(60, 60, 67, 0.5),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: ()
                                      {
                                      },
                                      child: new Text(
                                        "condetions",
                                        style: TextStyle
                                          (
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
                          height: 0.14.sw,
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
                        SizedBox(height: 0.005.sh,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget>
                            [
                              Text(
                                "Allready have an account? ",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontFamily: 'foo',
                                  color: Color.fromRGBO(30, 30, 37, 0.5),
                                ),
                              ),
                              InkWell(
                                onTap: ()
                                {
                                  Get.offAll(login());
                                },
                                child: new Text(
                                  "Log in",
                                  style: TextStyle
                                    (
                                    fontSize: 12.sp,
                                    color:Color.fromRGBO(36, 119, 183, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),// text
                        SizedBox(height: 0.005.sh,),
                        Container(
                           child:Row
                           (
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children:
                             [
                               Container(
                                 height:1, width: 0.28.sw, color: Colors.grey,
                                 margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                               ),
                               Text(
                                 "Or continue with ",
                                 style: TextStyle
                                   (
                                   color: Color.fromRGBO(163, 163, 163, 1),
                                   fontSize: 11.sp,
                                 ),
                               ),
                               Container(
                                 height:1, width: 0.28.sw, color: Colors.grey,
                                 margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                               ),
                             ],
                           )
                        ),// devider
                        SizedBox(height: 0.015.sh,),
                        Container(
                          width: 0.25.sw,
                          child: Row
                          (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:
                            [
                              CircleAvatar(
                               radius: 22,
                               backgroundColor: Color.fromRGBO(36, 118, 183, 1),
                               child: CircleAvatar
                              (
                                radius: 20,
                                backgroundColor:Colors.white,
                                child:Image
                                (
                                  image:AssetImage("image/facebook.png"),
                                )
                               ),
                              ),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Color.fromRGBO(183, 36, 36, 1),
                                child: CircleAvatar
                                  (
                                    radius: 20,
                                    backgroundColor:Colors.white,
                                    child:Image
                                      (
                                      image:AssetImage("image/google.png"),
                                    )
                                ),
                              ),
                            ],
                          ),
                        )// google and facebook
                     ],
                  )
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