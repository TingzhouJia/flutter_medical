import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.only(top: 10.0,left: 15,right: 15),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 320,
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Color(0xff6e78f7)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.person_outline,color: Colors.white,),
                      Icon(Icons.settings,color: Colors.white,)
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img/avatar1.jpg'),
                    radius: 45.0,
                  ),
                  SizedBox(height: 20.0,),
                  RichText(
                    text: TextSpan(
                      text: 'Jitebra ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17.0),
                      children: [
                        TextSpan(text: 'Ella',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500))
                      ]
                    ),
                  ),
                  Text('+91 973068433309',style: TextStyle(color: Colors.white),),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('52%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  Container(
                    width: 270,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: LinearProgressIndicator(
                        value: 0.6,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                        backgroundColor:Color(0xff7189bf) ,
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'profile');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          border: Border.all(color: Colors.white)
                      ),
                      child: Text('Complete you profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 500,
              width: 340,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.4),blurRadius: 3.0,spreadRadius: 1.0,offset: Offset(-1.0,-0.1)),
                ]
              ),
              child: Column(
                  children: <Widget>[
                    Container(
                      decoration:BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                        )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.userMd,color: Color(0xff6e78f7),),
                              SizedBox(width: 30.0,),
                              Text('My Doctor',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                          )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.calendar,color: Color(0xff6e78f7),),
                              SizedBox(width: 30.0,),
                              Text('Appointment',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                          )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.userCog,color: Color(0xff6e78f7),),
                              SizedBox(width: 20.0,),
                              Text('Online Consultation',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                          )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.clipboardList,color: Color(0xff6e78f7),),
                              SizedBox(width: 30.0,),
                              Text('Medical Records',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                          )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(Icons.watch,color: Color(0xff6e78f7),),
                              SizedBox(width: 25.0,),
                              Text('Reminders',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.withOpacity(0.4))
                          )
                      ),
                      padding:EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              FaIcon(FontAwesomeIcons.creditCard,color: Color(0xff6e78f7),),
                              SizedBox(width: 25.0,),
                              Text('My Payment',style: TextStyle(color: Color(0xff313450),fontWeight: FontWeight.w400,fontSize: 14.0),)
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios,size: 16.0,color: Color(0xff313450),)
                        ],
                      ),
                    )
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
