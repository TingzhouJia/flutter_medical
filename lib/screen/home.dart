import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/screen/account.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String locationValue = 'Montreal';
  List<String> location = ['Montreal', 'Toronto', 'Vancouver'];
  OverlayEntry _overlayEntry;

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
        builder: (context) => Positioned(
              right: 10,
              top: 129,
              width: 90,
              child: Material(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: location.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          locationValue = location[index];
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 6.0),
                        child: Text(
                          location[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ));
  }

  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: new Icon(Icons.home), title: new Text('Red')),
      BottomNavigationBarItem(
        icon: new Icon(Icons.search),
        title: new Text('Blue'),
      ),
      BottomNavigationBarItem(
          icon: Icon(Icons.info_outline), title: Text('Yellow'))
    ];
  }
  Widget home(){
    return Stack(

      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(left: 20.0, right: 10.0),
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: BoxDecoration(
                color: Color(0xff6e78f7),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32.0),
                    bottomRight: Radius.circular(32.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Medico',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20.0),
                ),
                GestureDetector(
                  onTap: () {
                    this._overlayEntry = this._createOverlayEntry();
                    Overlay.of(context).insert(this._overlayEntry);
                  },
                  child: Container(
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          locationValue,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 14.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.height * 0.13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff898a8f).withOpacity(0.4),
                                blurRadius: 4.0,
                                spreadRadius: 4.0,
                                offset: Offset(0, 4.0))
                          ]),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/icons/doc.png'),
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Doctor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 100),
                        child: Text(
                          'Search doctor around you',
                          style: TextStyle(
                              color: Color(0xff898a8f), fontSize: 14.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff898a8f).withOpacity(0.4),
                                blurRadius: 4.0,
                                spreadRadius: 4.0,
                                offset: Offset(0, 4.0))
                          ]),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/icons/pill.png'),
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Medicine',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 100),
                        child: Text(
                          'Order Medicine to home',
                          style: TextStyle(
                              color: Color(0xff898a8f), fontSize: 14.0),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Color(0xff898a8f).withOpacity(0.4),
                                blurRadius: 4.0,
                                spreadRadius: 4.0,
                                offset: Offset(0, 4.0))
                          ]),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/icons/diag.png'),
                          width: 50.0,
                          height: 50.0,
                          fit: BoxFit.fill,
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Digonostic',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      Container(
                        constraints: BoxConstraints(maxWidth: 100),
                        child: Text(
                          'Book tests or Doorstep',
                          style: TextStyle(
                              color: Color(0xff898a8f), fontSize: 14.0),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.32),
          height: MediaQuery.of(context).size.height*0.68,

          width: double.infinity,
          padding: EdgeInsets.only(left: 20.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 100,
                      width: MediaQuery.of(context).size.width*0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(image: AssetImage('assets/img/first_one.jpg'),fit: BoxFit.fill)
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10.0),
                      height: 100,
                      width: MediaQuery.of(context).size.width*0.85,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          image: DecorationImage(image: AssetImage('assets/img/first_two.jpg'),fit: BoxFit.fill)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Doctor nearby you',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xff313450),fontSize: 17.0),),
                        Text('See All',style: TextStyle(color: Color(0xff6e78f7),fontSize: 14.0,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10.0,),
                    Container(
                      height: 180,
                      child:
                      ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            width: 170,
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 40.0),
                                  padding: EdgeInsets.only(top: 40.0,left: 10.0,right: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                                  ),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Dr.Alina James',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 14.0
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(maxWidth: 170,minHeight: 30),
                                        child: Text('B.Sc, MBBS, DDVL, MD-Dermitologist',style: TextStyle(color: Colors.grey.withOpacity(0.5)),),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(Icons.star,color: Colors.orange,),
                                          Text('4.2')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top:0,

                                  child:  CircleAvatar(
                                    backgroundImage: AssetImage('assets/img/avatar1.jpg'),
                                    radius: 30.0,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            width: 170,
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 40.0),
                                  padding: EdgeInsets.only(top: 40.0,left: 10.0,right: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                                  ),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Dr.Steve Robert',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 14.0
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(maxWidth: 170,minHeight: 30),
                                        child: Text('B.Sc, MBBS, DDVL',style: TextStyle(color: Colors.grey.withOpacity(0.5)),),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(Icons.star,color: Colors.orange,),
                                          Text('3.2')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top:0,

                                  child:  CircleAvatar(
                                    backgroundImage: AssetImage('assets/img/avatar2.jpg'),
                                    radius: 30.0,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20.0),
                            width: 170,
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 40.0),
                                  padding: EdgeInsets.only(top: 40.0,left: 10.0,right: 10.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                                  ),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        'Dr.Senilla Noah',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,fontSize: 14.0
                                        ),
                                      ),
                                      SizedBox(height: 10.0,),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(maxWidth: 170,minHeight: 30.0),
                                        child: Text('B.Sc, MBBS, DDVL,',style: TextStyle(color: Colors.grey.withOpacity(0.5)),),
                                      ),
                                      SizedBox(height: 10.0,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(Icons.star,color: Colors.orange,),
                                          Text('4.7')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top:0,

                                  child:  CircleAvatar(
                                    backgroundImage: AssetImage('assets/img/avatar3.jpg'),
                                    radius: 30.0,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: GestureDetector(
          onTap: () {
            if (_overlayEntry != null) {
              _overlayEntry.remove();
              _overlayEntry = null;
            }
          },
          child: Stack(
            children: <Widget>[
              TabBarView(
                children: <Widget>[
                  home(),
                  Container(),
                  MyAccount()
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    height: MediaQuery.of(context).size.height*0.11,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32.0),
                            topRight: Radius.circular(32.0))),
                    child: TabBar(
                      indicatorColor: Colors.transparent ,
                      isScrollable: false,
                      labelColor: Color(0xff6e78f7),
                      unselectedLabelColor:Color(0xff898a8f) ,
                      tabs: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.laptop_mac,

                            ),
                            Text(
                              'Home',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.chat_bubble_outline,

                            ),
                            Text(
                              'Chat',

                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              Icons.perm_identity,

                            ),
                            Text(
                              'Account',

                            )
                          ],
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Row(
//crossAxisAlignment: CrossAxisAlignment.center,
//mainAxisAlignment: MainAxisAlignment.spaceAround,
//children: <Widget>[
//Column(
//children: <Widget>[
//Icon(Icons.laptop_mac,color: Color(0xff6e78f7),),
//Text('Home',style: TextStyle(fontWeight: FontWeight.bold),)
//],
//),
//GestureDetector(
//child: Column(
//children: <Widget>[
//Icon(Icons.chat_bubble_outline,color: Color(0xff898a8f),),
//Text('Chat',style: TextStyle(color: Color(0xff898a8f),),)
//],
//),
//),
//GestureDetector(
//child: Column(
//children: <Widget>[
//Icon(Icons.perm_identity,color: Color(0xff898a8f),),
//Text('Account',style: TextStyle(color: Color(0xff898a8f)),)
//],
//),
//)
//],
//)
