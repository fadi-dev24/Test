import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:screen/wedgits/cards.dart';
import '../pages/homepage/control/homepage_control.dart';
import '../pages/homepage/control/jobeartilce.dart';
late int selectedIndex=-1;
late int selectedIndex2=-1;
List<String> texts=["All","Foods","Beuaty","Beuaty extra"];
List<String> images=["image/All.png","image/foody.png",
  "image/beuaty.png","image/beuaty.png"];
var cont=homecontrol();
class UpperList extends StatefulWidget
{
  @override
  State<UpperList> createState() => _UpperListState();
}
class _UpperListState extends State<UpperList>
{
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_){
      _asyncMethod(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Column
    (
      children:
      [
         Container(
           height: 0.1.sh,
           child: ListView.builder(
      scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
            return Container(
              height: 0.1.sh,
              padding: EdgeInsets.all(7.sp),
              margin: EdgeInsets.all(7.sp),
              decoration: BoxDecoration(
                  color: selectedIndex == index ?
                  Color.fromRGBO(36, 118, 183, 1) : Color.fromRGBO(241, 242, 246, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12))
              ),
              child: InkWell(
                onTap: () {
                  setState(()
                  async{
                    if( selectedIndex != index)
                    {
                      selectedIndex = index;
                      if(index==0)
                        List<jobarticle> op= (await cont.get_list_of_cards(1)) as List<jobarticle>;
                      if(index==1)
                        List<jobarticle> op= (await cont.get_list_of_cards(3)) as List<jobarticle>;
                      if(index==2)
                        List<jobarticle> op= (await cont.get_list_of_cards(7)) as List<jobarticle>;
                      rebuildAllChildren(context);
                    }
                  });
                },
                child: Center
                  (
                  child: Row
                    (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Image(
                        width: 30.sp,
                        height: 30.sp,
                        image:AssetImage(images[index]),
                        color: selectedIndex == index ?
                        Colors.white : Color.fromRGBO(36, 118, 183, 1),
                      ),
                      SizedBox(width: 0.02.sw),
                      Text(
                        texts[index],
                        style: TextStyle
                          (
                          fontSize: 17.sp,
                          fontFamily: "poppins-reg",
                          color: selectedIndex == index?
                          Colors.white : Color.fromRGBO(36, 118, 183, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
        }
    ),
         ),
         Container(
           height: 0.7.sh,
           child:cont.list_of_cards.length<1?
           Center(child:Text(cont.wellcom)):
           ListView.builder(
               scrollDirection: Axis.vertical,
               shrinkWrap: true,
               itemCount: cont.list_of_cards.length,
               itemBuilder: (context, index)
               {
                 return Stack(
                   children:
                   [
                     Container(
                       alignment: Alignment.topRight,
                       child:DecoratedBox(
                         decoration:BoxDecoration(
                             shape: BoxShape.circle,
                             boxShadow: <BoxShadow>[
                               BoxShadow(
                                 color: Colors.black26.withOpacity(.4),
                                 blurRadius: 3.sp,
                                 spreadRadius: 1.sp,
                                 offset: const Offset(1,3),
                               )
                             ]),
                         child: CircleAvatar(
                           radius: 20.sp,
                           backgroundColor: Colors.white,
                         ),
                       ),
                     ),//
                     Container(
                       padding: EdgeInsets.all(5.sp),
                       width: 0.9.sw,
                       height: 0.23.sh,
                       child: Container(
                         child: Card
                           (
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(22.0),
                           ),
                           elevation: 9,
                           child: Container(
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.all(Radius.circular(22)),
                                 gradient: LinearGradient(
                                   begin: Alignment.topCenter,
                                   end: Alignment.bottomCenter,
                                   colors: [
                                     Color.fromRGBO(47,208,199,1),
                                     Color.fromRGBO(36,118,183,1),
                                   ],
                                 )
                             ),
                             child: Row
                               (
                               children:
                               [
                                 Container(
                                   margin: EdgeInsets.fromLTRB(0.sp,10.sp,0,0),
                                   width: 0.24.sw,
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children:
                                     [
                                       SizedBox(height: 0.01.sh,),
                                       Container(
                                           width: 0.2.sw,
                                           height: 0.1.sh,
                                           decoration: BoxDecoration(
                                             borderRadius: BorderRadius.all(Radius.circular(25)),
                                             image: DecorationImage(
                                               image:NetworkImage(cont.list_of_cards[index].imgurl),
                                               fit: BoxFit.cover,
                                             ),
                                           ),
                                           child: Container(
                                             padding: EdgeInsets.all(5.sp),
                                           )
                                       ),
                                       SizedBox(height: 0.015.sh,),
                                       Container(
                                           child:Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children:
                                             [
                                               Text(
                                                 " language",
                                                 style: TextStyle
                                                   (
                                                   fontFamily: 'poppens',
                                                   color: Colors.white,
                                                   fontSize: 10.sp,
                                                 ),
                                               ),
                                               SizedBox(width: 0.02.sw,),
                                             ],
                                           )
                                       ),
                                       SizedBox(height: 0.005.sh,),
                                       Container(
                                         child: Row
                                           (
                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children:
                                           [
                                             SizedBox(width: 0.02.sw,),
                                             Container(
                                               width: 13.sp,
                                               height: 13.sp,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage("image/corr.png"),
                                                   fit: BoxFit.cover,
                                                 ),
                                               ),
                                             ),
                                             SizedBox(width: 0.01.sw,),
                                             Text(
                                               cont.list_of_cards[index].languages[0],
                                               style: TextStyle
                                                 (
                                                 fontFamily: 'poppens',
                                                 color: Colors.white,
                                                 fontSize: 8.sp,
                                               ),
                                             ),
                                             SizedBox(width: 0.01.sw,),
                                             Container(
                                               decoration: BoxDecoration
                                                 (
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.all(Radius.circular(15))
                                               ),
                                               child: Icon
                                                 (
                                                 size: 13.sp,
                                                 Icons.keyboard_arrow_right_rounded,
                                               ),
                                             ),
                                           ],
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                                 Container(
                                   margin: EdgeInsets.fromLTRB(0,10.sp,0,0),
                                   width: 0.54.sw,
                                   padding: EdgeInsets.all(5),
                                   child: Column(
                                     children:
                                     [
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children:
                                         [
                                           Text(
                                             cont.list_of_cards[index].company,
                                             style: TextStyle
                                               (
                                               fontFamily: 'poppens',
                                               color: Colors.white,
                                               fontSize: 8.sp,
                                             ),),
                                           Card(
                                             shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(12.0),
                                             ),
                                             child: Container(
                                               child:Row(
                                                 children:
                                                 [
                                                   SizedBox(width: 0.01.sw,),
                                                   Container(
                                                     child: Image.asset('image/Vector (5).png',
                                                         height:10,
                                                         width: 10,
                                                         fit: BoxFit.cover),
                                                   ),
                                                   SizedBox(width: 0.02.sw,),
                                                   Text(
                                                     cont.list_of_cards[index].salary,
                                                     style: TextStyle
                                                       (
                                                       fontFamily: 'poppens',
                                                       fontSize: 8.sp,
                                                       fontWeight: FontWeight.bold,
                                                       color: Color.fromRGBO(16, 51, 80, 1),

                                                     ),
                                                   ),
                                                   SizedBox(width: 0.01.sw,),
                                                 ],
                                               ),
                                             ),
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 0.001.sh,),
                                       Row(
                                           children:
                                           [
                                             Text(
                                               cont.list_of_cards[index].jobname,
                                               style: TextStyle
                                                 (
                                                 fontFamily: 'poppens',
                                                 color: Colors.white,
                                                 fontSize: 15.sp,
                                               ),),
                                           ]
                                       ),
                                       SizedBox(height: 0.004.sh,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children:
                                         [
                                           Text(
                                             "easiest way to make money from your content \n and followers",
                                             style: TextStyle
                                               (
                                               fontFamily: 'poppens-reg',
                                               color:Color.fromRGBO(223, 223, 223, 1),
                                               fontSize: 7.sp,
                                             ),),
                                         ],
                                       ),
                                       SizedBox(height: 0.008.sh,),
                                       Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: <Widget>
                                         [
                                           Column(
                                             children: <Widget>
                                             [
                                               Row(
                                                 children:
                                                 [
                                                   Container(
                                                     child: Image.asset('image/castle.png',
                                                         height:10.sp,
                                                         width: 10.sp,
                                                         color: Color.fromRGBO(47, 46, 65, 1),
                                                         fit: BoxFit.cover),
                                                   ),
                                                   Text(
                                                     " Expiry date",
                                                     style: TextStyle
                                                       (
                                                       fontFamily: 'poppens',
                                                       fontWeight: FontWeight.bold,
                                                       color: Color.fromRGBO(47, 46, 65, 1),
                                                       fontSize: 8.sp,
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               SizedBox(height: 0.007.sh,),
                                               Text(
                                                 " "+cont.list_of_cards[index].expire_date,
                                                 style: TextStyle
                                                   (
                                                   fontFamily: 'poppens',
                                                   color: Color.fromRGBO(223, 223, 223, 1),
                                                   fontSize: 8.sp,
                                                 ),
                                               ),
                                             ],
                                           ),
                                           Column(
                                             children: <Widget>
                                             [
                                               Text(
                                                 "Proposals",
                                                 style: TextStyle
                                                   (
                                                   fontFamily: 'poppens',
                                                   fontWeight: FontWeight.bold,
                                                   color: Color.fromRGBO(47, 46, 65, 1),
                                                   fontSize: 8.sp,
                                                 ),
                                               ),
                                               SizedBox(height: 0.007.sh,),
                                               Text(
                                                 cont.list_of_cards[index].proposals,
                                                 style: TextStyle
                                                   (
                                                   fontFamily: 'poppens',
                                                   color: Color.fromRGBO(223, 223, 223, 1),
                                                   fontSize: 8.sp,
                                                 ),
                                               ),
                                             ],
                                           ),
                                           Column(
                                             children: <Widget>
                                             [
                                               Row(
                                                 children: [

                                                   Container(
                                                     child: Image.asset('image/location.png',
                                                         height:10.sp,
                                                         width: 10.sp,
                                                         color: Color.fromRGBO(47, 46, 65, 1),
                                                         fit: BoxFit.cover),
                                                   ),
                                                   Text(
                                                     " Location",
                                                     style: TextStyle
                                                       (
                                                       fontWeight: FontWeight.bold,
                                                       color: Color.fromRGBO(47, 46, 65, 1),
                                                       fontSize: 8.sp,
                                                     ),
                                                   ),
                                                 ],
                                               ),
                                               SizedBox(height: 0.007.sh,),
                                               Text(
                                                 " "+cont.list_of_cards[index].locations,
                                                 style: TextStyle
                                                   (
                                                   fontFamily: 'poppens',
                                                   color: Color.fromRGBO(223, 223, 223, 1),
                                                   fontSize: 8.sp,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                       SizedBox(height: 0.008.sh,),
                                       Container(
                                         width: 0.63.sw,
                                         height: 0.04.sh,
                                         decoration: BoxDecoration(
                                           borderRadius: BorderRadius.all(Radius.circular(8)),
                                           color: Colors.white,
                                         ),
                                         child: Padding(
                                           padding: const EdgeInsets.fromLTRB(10,0,0,0),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: <Widget>
                                             [
                                               Text(
                                                 "Social media tags",
                                                 style: TextStyle
                                                   (
                                                   fontWeight: FontWeight.bold,
                                                   color: Color.fromRGBO(16, 51, 80, 1),
                                                   fontFamily: 'poppens',
                                                   fontSize: 7.sp,
                                                 ),
                                               ),
                                               Container(
                                                 padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                                 child: Container
                                                   (

                                                   decoration: BoxDecoration
                                                     (
                                                     borderRadius: BorderRadius.all(Radius.circular(30)),
                                                     image: DecorationImage(
                                                       image: AssetImage("image/Rectangle 44.png"),
                                                       fit: BoxFit.cover,
                                                     ),
                                                   ),
                                                   child: Padding
                                                     (
                                                       padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                       child: Container
                                                         (
                                                         width: 20.sp,
                                                         height: 20.sp,
                                                         child: Image
                                                           (
                                                             image:AssetImage('image/cam.png')
                                                         ),
                                                       )
                                                   ),
                                                 ),
                                               ),
                                               Container(
                                                 padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                                 child: Container
                                                   (
                                                   decoration: BoxDecoration
                                                     (
                                                     borderRadius: BorderRadius.all(Radius.circular(30)),
                                                     image: DecorationImage(
                                                       image: AssetImage("image/21.png"),
                                                       fit: BoxFit.cover,
                                                     ),
                                                   ),
                                                   child: Padding(
                                                       padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                       child: Container
                                                         (
                                                         width: 20.sp,
                                                         height: 20.sp,
                                                         child: Image
                                                           (
                                                             image:AssetImage('image/22.png')
                                                         ),
                                                       )
                                                   ),
                                                 ),
                                               ),
                                               Container(
                                                 padding: EdgeInsets.fromLTRB(0,6.sp,0,0),
                                                 child: Container
                                                   (

                                                   decoration: BoxDecoration
                                                     (
                                                     borderRadius: BorderRadius.all(Radius.circular(30)),
                                                     image: DecorationImage(
                                                       image: AssetImage("image/31.png"),
                                                       fit: BoxFit.cover,
                                                     ),
                                                   ),
                                                   child: Padding
                                                     (
                                                       padding: EdgeInsets.fromLTRB(0,0,5.sp,5.sp),
                                                       child: Container
                                                         (
                                                         width: 20.sp,
                                                         height: 20.sp,
                                                         child: Image
                                                           (
                                                             image:AssetImage('image/32.png')
                                                         ),
                                                       )
                                                   ),
                                                 ),
                                               ),
                                               Container(
                                                 padding: EdgeInsets.fromLTRB(0,3.sp,0,0.5.sp),
                                                 child: Container
                                                   (
                                                   decoration: BoxDecoration
                                                     (
                                                     borderRadius: BorderRadius.all(Radius.circular(30)),
                                                     image: DecorationImage(
                                                       image: AssetImage("image/41.png"),
                                                       fit: BoxFit.cover,
                                                     ),
                                                   ),
                                                   child: Padding
                                                     (
                                                       padding: EdgeInsets.fromLTRB(0,0,6.sp,3.sp),
                                                       child: Container
                                                         (
                                                         width: 20.sp,
                                                         height: 20.sp,
                                                         child: Image
                                                           (
                                                             image:AssetImage('image/in.png')
                                                         ),
                                                       )
                                                   ),
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                       ),// card
                     ),//
                     GestureDetector(
                       onTap: () {
                         setState((){
                           selectedIndex2=index;
                         });
                       },
                       child: Container(
                         child: Opacity(
                           opacity: 0.6,
                           child: Container
                             (
                             alignment: Alignment.topRight,
                             child:CircleAvatar(
                                 radius: 20.sp,
                                 backgroundColor: Colors.grey,
                                 child: Container(
                                   width: 38.sp,
                                   height: 38.sp,
                                   decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       gradient: LinearGradient(
                                           colors: [
                                             selectedIndex2==index?Color.fromRGBO(226, 72,72,0.1):Color.fromRGBO(236,162,162,0.1),
                                             selectedIndex2==index?Color.fromRGBO(226, 72,72,1):Color.fromRGBO(236,162,162,1),
                                             selectedIndex2==index?Color.fromRGBO(255,255,255,1):Color.fromRGBO(222,222,222,1),
                                           ],
                                           begin: Alignment.bottomLeft,
                                           end: Alignment.topRight
                                       )
                                   ),
                                   child: CircleAvatar(
                                     backgroundColor: Colors.transparent,
                                     radius: 19.sp,
                                     child:Center
                                       (
                                       child:Image.asset(selectedIndex2==index?"image/hart2.png":"image/hart.png",
                                         width: 19.sp,
                                         height: 19.sp,
                                       ),
                                     ),
                                   ),
                                 )
                             ),
                           ),
                         ),
                       ),//circle
                     ),//
                   ],
                 );
               }
           ) ,
         ),
      ],
    );
  }
  _asyncMethod(BuildContext context) async
  {
    rebuildAllChildren(context);
  }
  void rebuildAllChildren(BuildContext context)
  {
    void rebuild(Element el)
    {
      el.markNeedsBuild();
      el.visitChildren(rebuild);
    }
    (context as Element).visitChildren(rebuild);
  }
}