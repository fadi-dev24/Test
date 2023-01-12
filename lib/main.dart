import 'package:firbase/views/fillter.dart';
import 'package:firbase/views/regester.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'views/home_page.dart';
import 'views/login.dart';
Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const vi());
}
class vi extends StatelessWidget
{
  const vi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return GetMaterialApp
    (
      getPages:
      [
       GetPage(name: '/login',page:()=>login()),
       GetPage(name: '/fillter',page:()=>fill()),
       GetPage(name: '/home',page:()=>home()),
       GetPage(name: '/reg',page:()=>reg()),
      ],
      initialRoute: "/login",
    );
  }
}