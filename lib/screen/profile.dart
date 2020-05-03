import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
         Container(
           height: MediaQuery.of(context).size.height,
           child: SingleChildScrollView(
             child: Stack(
               children: <Widget>[
                 Positioned(
                   top: 0,
                   left: 0,
                   right: 0,
                   child: Container(
                     padding: EdgeInsets.all(20.0),
                     height: 250,
                     decoration: BoxDecoration(
                         color: Color(0xff6e78f6),
                         borderRadius: BorderRadius.only(
                             bottomRight: Radius.circular(60.0),
                             bottomLeft: Radius.circular(60.0))),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         SizedBox(
                           height: 30.0,
                         ),
                         IconButton(
                           icon: Icon(
                             Icons.arrow_back,
                             color: Colors.white,
                             size: 20.0,
                           ),
                           onPressed: () {
                             Navigator.of(context).pop();
                           },
                         )
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.only(top: 100, left: 10, right: 10),
                   child: Stack(
                     alignment: Alignment.center,
                     children: <Widget>[
                       Positioned(
                         top: 50.0,
                         child: Container(
                             padding: EdgeInsets.all(15.0),
                             height: 270,
                             width: 350,
                             decoration: BoxDecoration(
                               borderRadius:
                               BorderRadius.all(Radius.circular(20.0)),
                               boxShadow: [
                                 BoxShadow(
                                     color: Color(0xffeeeeee),
                                     blurRadius: 2.0,
                                     spreadRadius: 1.0,
                                     offset: Offset(0.0, 2.0))
                               ],
                               color: Colors.white,
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                                 Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceAround,
                                   children: <Widget>[
                                     Text(
                                       'Prime',
                                       style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           fontSize: 17.0,
                                           color: Colors.green),
                                     ),
                                     SizedBox(
                                       width: 20.0,
                                     ),
                                     Row(
                                       children: <Widget>[
                                         Icon(
                                           Icons.star,
                                           color: Colors.orange,
                                         ),
                                         Text(
                                           '4.2',
                                           style: TextStyle(
                                               color: Colors.blueGrey,
                                               fontSize: 14.0),
                                         )
                                       ],
                                     )
                                   ],
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text(
                                   'Dr.Jitendra Raut',
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 17.0),
                                 ),
                                 SizedBox(
                                   height: 5.0,
                                 ),
                                 Text(
                                   'B.Sc, MBBS, DDVL, MD-Dermitologist',
                                   style: TextStyle(
                                       color: Colors.grey,
                                       fontSize: 14.0,
                                       fontWeight: FontWeight.w500),
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     RichText(
                                       text: TextSpan(
                                         text: '16 ',
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.bold),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: 'yrs Experience',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.w500,
                                                   color: Colors.grey)),
                                         ],
                                       ),
                                     ),
                                     RichText(
                                       text: TextSpan(
                                         text: '85% ',
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.bold),
                                         children: <TextSpan>[
                                           TextSpan(
                                               text: '(4386 votes)',
                                               style: TextStyle(
                                                   fontWeight: FontWeight.w500,
                                                   color: Colors.grey)),
                                         ],
                                       ),
                                     )
                                   ],
                                 ),
                                 SizedBox(
                                   height: 30,
                                 ),
                                 Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceBetween,
                                   children: <Widget>[
                                     Container(
                                       width: 65,
                                       height: 65,
                                       decoration: BoxDecoration(
                                           border: Border.all(),
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(10.0)),
                                           image: DecorationImage(
                                               image: AssetImage(
                                                   'assets/img/p1.jpeg'),
                                               fit: BoxFit.fill)),
                                     ),
                                     Container(
                                       width: 65,
                                       height: 65,
                                       decoration: BoxDecoration(
                                           border: Border.all(),
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(10.0)),
                                           image: DecorationImage(
                                               image: AssetImage(
                                                   'assets/img/p2.jpeg'),
                                               fit: BoxFit.fill)),
                                     ),
                                     Container(
                                       width: 65,
                                       height: 65,
                                       decoration: BoxDecoration(
                                           border: Border.all(),
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(10.0)),
                                           image: DecorationImage(
                                               image: AssetImage(
                                                   'assets/img/p3.jpg'),
                                               fit: BoxFit.fill)),
                                     ),
                                     Container(
                                         width: 65,
                                         height: 65,
                                         decoration: BoxDecoration(
                                             border: Border.all(),
                                             borderRadius: BorderRadius.all(
                                                 Radius.circular(10.0)),
                                             image: DecorationImage(
                                                 image: AssetImage(
                                                     'assets/img/p4.jpg'),
                                                 fit: BoxFit.fill,
                                                 colorFilter: ColorFilter.mode(
                                                     Colors.grey,
                                                     BlendMode.modulate))),
                                         child: Center(
                                           child: Text('+7',
                                               style: TextStyle(
                                                   color: Colors.white,
                                                   fontSize: 20.0)),
                                         ))
                                   ],
                                 )
                               ],
                             )),
                       ),
                       Positioned(
                         top: 0.0,
                         child: Container(
                           padding: EdgeInsets.all(5.0),
                           decoration: BoxDecoration(
                               color: Colors.white, shape: BoxShape.circle),
                           child: CircleAvatar(
                             backgroundImage:
                             AssetImage('assets/img/avatar1.jpg'),
                             radius: 35.0,
                           ),
                         ),
                       ),
                       Container(
                         width: 370,
                         margin: EdgeInsets.only(top: 350),
                         padding: EdgeInsets.all(20.0),
                         decoration: BoxDecoration(
                           color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                                 color: Color(0xffeeeeee),
                                 blurRadius: 4.0,
                                 spreadRadius: 4.0,
                                 offset: Offset(0, 1))
                           ],
                           borderRadius:
                           BorderRadius.all(Radius.circular(20.0)),
                         ),
                         child: Column(
                           children: <Widget>[
                             Container(
                               padding: EdgeInsets.only(bottom: 10.0),
                               decoration: BoxDecoration(
                                 border: Border(
                                     bottom:
                                     BorderSide(color: Color(0xffeeeeee))),
                               ),
                               child: Row(
                                 children: <Widget>[
                                   RichText(
                                     text: TextSpan(
                                       text: 'In Clinic fee:',
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontWeight: FontWeight.w500,
                                           fontSize: 17.0),
                                       children: <TextSpan>[
                                         TextSpan(
                                             text: '\$10',
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 color: Colors.black)),
                                       ],
                                     ),
                                   ),
                                   Container(
                                     padding: EdgeInsets.symmetric(
                                         horizontal: 30.0, vertical: 5.0),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(
                                             Radius.circular(15.0)),
                                         border: Border.all(
                                             color: Color(0xff6e78f6),
                                             width: 0.5)),
                                     child: Text(
                                       'Book',
                                       style: TextStyle(
                                           color: Color(0xff6e78f6),
                                           fontWeight: FontWeight.w700,
                                           fontSize: 17.0),
                                     ),
                                   ),

                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                               ),
                             ),
                             Container(
                               padding:
                               EdgeInsets.only(bottom: 20.0, top: 20.0),
                               decoration: BoxDecoration(
                                 border: Border(
                                     bottom:
                                     BorderSide(color: Color(0xffeeeeee))),
                               ),
                               child: Row(
                                 children: <Widget>[
                                   Text(
                                     'CLOSED TODAY',
                                     style: TextStyle(
                                         fontSize: 12.0,
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500),
                                   ),
                                   Text(
                                     '9:30AM-08:00PM',
                                     style: TextStyle(
                                         fontSize: 12.0,
                                         fontWeight: FontWeight.bold),
                                   ),
                                   Text(
                                     'All Timing',
                                     style: TextStyle(
                                         color: Color(0xff6e78f6),
                                         fontSize: 12.0,
                                         fontWeight: FontWeight.w500),
                                   ),
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                               ),
                             ),
                             Container(
                                  padding: EdgeInsets.symmetric(vertical: 20.0),
                                 decoration: BoxDecoration(

                                     border: Border(
                                       bottom: BorderSide(color: Color(0xffeeeeee))
                                        )),
                                 child: Column(
                                   children: <Widget>[
                                     Row(
                                       children: <Widget>[
                                         Icon(Icons.location_on,color: Colors.greenAccent,size: 16.0,),
                                         Text('92/6, 3rd Floor, Outer St.Catherrrie',style: TextStyle(color: Color(0xff94a5a6)),)
                                       ],
                                     ),
                                     SizedBox(height: 20,),
                                     Container(
                                       width: 300,
                                       height: 150,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                          image: DecorationImage(image: AssetImage('assets/img/map.jpg'),fit: BoxFit.fill)
                                       ),
                                     )
                                   ],
                                 )
                             ),
                             Container(
                               width: 300,
                               padding:
                               EdgeInsets.only(bottom: 20.0, top: 20.0),
                               decoration: BoxDecoration(
                                 border: Border(
                                     bottom:
                                     BorderSide(color: Color(0xffeeeeee))),
                               ),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Text(
                                     'Feedback',
                                     style: TextStyle(
                                         fontSize: 16.0,
                                         color: Colors.grey,

                                         fontWeight: FontWeight.w500),
                                   ),
                                   SizedBox(
                                     height: 20,
                                   ),
                                   Text(
                                     'Very Good, I think he is a good doctor',
                                     style: TextStyle(
                                         fontSize: 12.0,
                                         fontWeight: FontWeight.bold),
                                   ),
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                               ),
                             ),
                             Container(
                               padding:
                               EdgeInsets.only(bottom: 20.0, top: 20.0),
                               decoration: BoxDecoration(
                                 border: Border(
                                     bottom:
                                     BorderSide(color: Color(0xffeeeeee))),
                               ),
                               child: Row(
                                 children: <Widget>[
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: <Widget>[
                                       Text(
                                         'Service',
                                         style: TextStyle(
                                             fontSize: 17.0,
                                             color: Colors.grey,
                                             fontWeight: FontWeight.w600),
                                       ),
                                       SizedBox(height: 20,),
                                       Text(
                                         'Ophthalmology',
                                         style: TextStyle(
                                             fontSize: 12.0,
                                             fontWeight: FontWeight.bold),
                                       ),
                                       SizedBox(height: 10,),
                                       Text(
                                         'Glaucama',
                                         style: TextStyle(
                                             fontSize: 12.0,
                                             fontWeight: FontWeight.bold),
                                       ),
                                       SizedBox(height: 10,),
                                       Text(
                                         'Cataract',
                                         style: TextStyle(
                                             fontSize: 12.0,
                                             fontWeight: FontWeight.bold),
                                       ),
                                       SizedBox(height: 10,),
                                       Text(
                                         'ALL SERVICE',
                                         style: TextStyle(
                                             fontSize: 14.0,
                                             color: Color(0xff6e78f6),
                                             fontWeight: FontWeight.bold),
                                       )
                                     ],
                                   )
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                               ),
                             ),
                             Container(
                               padding:
                               EdgeInsets.only(bottom: 20.0, top: 20.0),
                               decoration: BoxDecoration(
                                 border: Border(
                                     bottom:
                                     BorderSide(color: Color(0xffeeeeee))),
                               ),
                               child: Row(
                                 children: <Widget>[
                                   Text(
                                     'CLOSED TODAY',
                                     style: TextStyle(
                                         fontSize: 12.0,
                                         color: Colors.red,
                                         fontWeight: FontWeight.w500),
                                   ),
                                   Text(
                                     '9:30AM-08:00PM',
                                     style: TextStyle(
                                         fontSize: 12.0,
                                         fontWeight: FontWeight.bold),
                                   ),
                                   Text(
                                     'All Timing',
                                     style: TextStyle(
                                         color: Color(0xff6e78f6),
                                         fontSize: 12.0,
                                         fontWeight: FontWeight.w500),
                                   ),
                                 ],
                                 mainAxisAlignment:
                                 MainAxisAlignment.spaceBetween,
                               ),
                             ),
                           ],
                         ),
                         height: 1000,
                       )
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ),
          Positioned(
            bottom: 30,
            left: 15,
            right: 15,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                color: Colors.white,
                border: Border.all(color: Color(0xffeeeeee))
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 150,
                    child: Text('Give Feedback',textAlign: TextAlign.center,style: TextStyle(color: Color(0xff94a5a6),fontSize: 14,fontWeight: FontWeight.w600),),
                  ),
                  Container(
                    child: Text('Book',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),),
                    width: 190,
                    padding: EdgeInsets.only(top:15.0,bottom: 15,left: 15,right: 15),
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      color: Color(0xff6e78f6)
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
