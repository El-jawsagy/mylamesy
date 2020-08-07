import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/appbar/notification_screen.dart';
import 'package:mylamesy/screen/appbar/profile_screen.dart';



class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();


  Future<String> createAlertDialog(BuildContext context){

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.close, color: Colors.red,)),
              Align(
                  alignment: Alignment.centerRight,
                  child: Text('طلب استشارة طبيب', style: TextStyle(color: CustomColors.Primary),)),
            ],
          ),
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اختيار نوع الاستشارة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              autofocus: false,
              onChanged: (value){},
              cursorColor: Colors.black,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 25,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),

                hintText: 'نوع الاستشارة',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 15,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اختيار طريقة الدفع',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8,),
            TextField(
              autofocus: false,
              onChanged: (value){},
              cursorColor: Colors.black,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 25,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),

                hintText: 'طرق الدفع',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 15,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'تفاصيل الاستشارة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                'اكتب تفاصيل استشارتك',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 15,
                ),
              ),
            ),

            SizedBox(height: 20,),

            Material(
              color: CustomColors.Primary,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              elevation: 1.0,
              child: MaterialButton(
                onPressed: () {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginValidation(),),);
                },
                minWidth: double.infinity,
                height: 37.0,
                child: Text(
                  'ارسال الاستشارة',
                  style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold,),
                ),
              ),
            ),

          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: scaffoldKey,
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

        // menu icon
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: CustomColors.Light,
            ),
            child: IconButton(
              icon: Image.asset("images/list_icon.png", color: CustomColors.TypoGraphy,),
              iconSize: 30 ,
              onPressed: (){
                scaffoldKey.currentState.openDrawer();
              },
            ),
          ),
        ),


        actions: <Widget>[
          _imageAppBar("images/notif_icon.png", (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen(),),);
          }, CustomColors.ReverseDark),

          _imageAppBar("images/icon.png",(){
            createAlertDialog(context).then((value){
              SnackBar mySnakBar = SnackBar(content: Text('شكرا لك'));
              Scaffold.of(context).showSnackBar(mySnakBar);
            });
          }, CustomColors.PrimaryHover),

          _imageAppBar("images/person_icon.png", (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen(),),);
          }, CustomColors.Secondary),

        ],
      ),
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: CustomColors.SecondaryHover,

          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: CustomColors.SecondaryHover,
                ),

                // header Drawer
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    // Avatar image
                    CircleAvatar(
                      backgroundImage: AssetImage('images/logo.png', ),
                      radius: 45,
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 15),

                    // user name
                    Text('user name', style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    )),
                  ],
                ),
              ),

              // item Menu Bar Drawer
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: CustomColors.SecondaryHover,
                  child: ListView(
                    children: <Widget>[

                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('الاطباق الرئيسية',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('الوجبات حسب التصنيف'),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('اعدادات التطبيق',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),


                      _itemMenuBar('اعدادات الحساب', ),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),


                      _itemMenuBar('قائمة وجباتي',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('قائمة وصفاتي',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('البرامج التفاعلية',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('تواصل معنا',),
                      Divider(
                        height: 1.0,
                        color: Colors.black26,
                        thickness: 0.5,
                        endIndent: 0,
                        indent: 0,
                      ),

                      _itemMenuBar('عن ملامسي',),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
         Column(
          children: <Widget>[

            // bannar image
            // profile image
            Container(
              height: 330,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    bottom: 230,
                    right: 0,
                    left: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/banner.png',), fit: BoxFit.fitWidth),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    bottom: 180,
                    right: 130,
                    left: 130,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 30,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 35,
                    right: 10,
                    left: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('اسم الطبيب', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: CustomColors.Primary),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                          child: Container(
                            width: double.infinity,
                            child: Text('about username details,about username details, about username details, about username details, about username details, about username details,about username details, ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16, color: Colors.black),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 2,
                      indent: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('اسم التخصص',textAlign: TextAlign.start ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: CustomColors.Secondary, ),),
                          Text('تخصص الطبيب',textAlign: TextAlign.end ,style: TextStyle(fontSize: 18, color: Colors.black),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 2,
                      indent: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text('مصر', textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Secondary, fontSize: 18),),
                          Text('محل الاقامة', textAlign: TextAlign.end ,style: TextStyle(fontSize: 18, color: Colors.black),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 2,
                      indent: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Container(
                        height: 135,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text('الشهادة الاولي',
                                  textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Secondary, fontSize: 18),),

                                Text('الشهادة الثانية',
                                  textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Secondary, fontSize: 18),),

                                Text('الشهادة الثالثة',
                                  textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Secondary, fontSize: 18),),

                                Text('الشهادة الرابعة',
                                  textAlign: TextAlign.start ,style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Secondary, fontSize: 18),),

                              ],
                            ),
                            Text('شهادات الطبيب',textAlign: TextAlign.end , style: TextStyle(fontSize: 18, color: Colors.black),),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 2,
                      indent: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Align(
                              alignment: Alignment.centerRight,
                              child: Text('150',textAlign: TextAlign.start , style: TextStyle(fontWeight: FontWeight.bold, color: CustomColors.Primary, fontSize: 20),)),
                          Text('سعر الجلسة',textAlign: TextAlign.end , style: TextStyle(fontSize: 18, color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              color: CustomColors.Primary,
              textColor: Colors.white,
              onPressed: (){
                createAlertDialog(context).then((value){
                  SnackBar mySnakBar = SnackBar(content: Text('شكرا لك'));
                  Scaffold.of(context).showSnackBar(mySnakBar);
                });
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'طلب استشارة الان',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
  Widget _itemMenuBar(String title){
    return ListTile(
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(title, style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),),
    );
  }

  Widget _imageAppBar(String image, Function onPressed, Color color){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color,
        ),
        child: IconButton(
          icon: Image.asset(image, color: Colors.white,),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
