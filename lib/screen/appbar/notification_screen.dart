import 'package:flutter/material.dart';
import 'package:mylamesy/screen/main_screen.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/appbar/notification_screen.dart';
import 'package:mylamesy/screen/appbar/profile_screen.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Future<String> createAlertDialog(BuildContext context){

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.close, color: Colors.red,),
            Text('اضافة وصفة خاصة', style: TextStyle(color: CustomColors.Primary),),
          ],
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اسم الوجبة الخاصة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 3,),
            TextField(
              autofocus: false,
              onChanged: (value){},
              cursorColor: Colors.black,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
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

                hintText: 'عنوان الوجبة',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اختيار نوع',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 3,),
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

                hintText: 'افطار',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 5,),

            Padding(
              padding: EdgeInsets.only(right: 13),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اختيار عنوان الشحن',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 3,),
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

                hintText: 'عنوان البيت',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'ايام توصيل الوجبة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 110,
                  child: TextField(
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

                      hintText: 'الثلاثاء',
                      hintStyle: TextStyle(fontSize: 15),

                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 110,
                  child:  TextField(
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

                      hintText: 'السبت',
                      hintStyle: TextStyle(fontSize: 15),

                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 5,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'موعد توصيل الوجبة',
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
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
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

                hintText: '2:30 PM',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 5,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.add, color: CustomColors.Primary,)),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding:  EdgeInsets.only(right: 13.0,),
                    child: Text(
                      'اضافة مكونات الوجبة',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3,),
            Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
              ),
              child: Padding(
                padding:  EdgeInsets.only(right: 13.0,),
                child: Text(
                  'اكتب ملاحظات عن الوجبة',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  ),
                ),
              ),
            ),

            SizedBox(height: 8,),

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
                  'اضافة الوصفة',
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
      backgroundColor: CustomColors.GrayBack,
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
          _imageAppBar("images/notif_icon.png", null , CustomColors.ReverseDark),

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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Align(
                alignment: Alignment.center,
                child: Text('قائمة التنبيهات', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold),)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              children: <Widget>[
                getContainer('images/food_four.png', 'تنبيهات'),

                SizedBox(height: 15,),

                getContainer('images/food_five.png', 'تنبيهات'),

                SizedBox(height: 15,),

                getContainer('images/food.png', 'تنبيهات'),

                SizedBox(height: 15,),

                getContainer('images/food_three.png', 'تنبيهات'),

                SizedBox(height: 15,),

                getContainer('images/food_two.png', 'تنبيهات'),

                SizedBox(height: 15,),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Align(
                alignment: Alignment.center,
                child: Text('اجعل الكل مقروء', style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.bold),)),
          ),
        ],
      ),
    );
  }

  Widget getContainer(String images,String title){
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Icon(Icons.close, color: Colors.red,)),
          Container(
            width: 240,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(title, style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),)),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 91,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(images),
                fit: BoxFit.cover,
              ),
            ),
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

