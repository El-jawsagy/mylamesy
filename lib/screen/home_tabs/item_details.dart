import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/appbar/notification_screen.dart';
import 'package:mylamesy/screen/appbar/profile_screen.dart';


class ItemDetails extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {

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
      body: SafeArea(
        child: ListView(
          children: <Widget>[
           Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Stack(
                  children:[
                    Positioned(
                      top: 0,
                      bottom: 60,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('images/food_seven.png',), fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    Positioned(
                      top: 170,
                      left: 20,
                      right: 20,
                      bottom: 0,
                      child: Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Align(alignment: Alignment.centerRight,child: Text('وجبة افطار', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.black),)),
                                    SizedBox(height: 10,),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: CustomColors.PrimaryHover),
                                      ),
                                      child: RaisedButton(
                                        elevation: 0,
                                        onPressed: (){

                                        },
                                        color: Colors.white,
                                        child: Text('اضف لوجباتي', style: TextStyle(color: CustomColors.Primary),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Align(alignment: Alignment.centerRight ,child: Text('اسم الوجبة', style: TextStyle(fontSize: 20, color: CustomColors.SecondaryHover, fontWeight: FontWeight.bold),)),
                                    SizedBox(height: 10,),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        children: <Widget>[
                                          Text("150", style: TextStyle(fontSize: 18, color: CustomColors.Primary),),
                                          Text('سعر الوجبه ', style: TextStyle(fontSize: 18, color: Colors.grey),),
                                        ],
                                      ),
                                    ),
                                  ],
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
              SizedBox(height: 15,),
              Align(alignment: Alignment.center ,child: Text('مكونات الوجبة', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: CustomColors.Secondary),)),
              SizedBox(height: 10,),
              Divider(
                height: 5.0,
                color: Colors.grey,
                thickness: 1.0,
                endIndent: 15.0,
                indent: 15.0,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('جرام 15', style: TextStyle(fontSize: 20, color: CustomColors.Secondary),),
                          Text('اسم المكون', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 5.0,
                      indent: 5.0,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('15 جرام', style: TextStyle(fontSize: 20, color: CustomColors.Secondary),),
                          Text('اسم المكون', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.grey,
                      thickness: 1.0,
                      endIndent: 5.0,
                      indent: 5.0,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('15 جرام', style: TextStyle(fontSize: 20, color: CustomColors.Secondary),),
                          Text('اسم المكون', style: TextStyle(fontSize: 20, color: Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),

              Container(
                height: 100,
                width: double.infinity,
                color: CustomColors.GrayBack,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('مدى رضاك عن الخدمة', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w700)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.orange,),
                        Icon(Icons.star, color: Colors.orange,),
                        Icon(Icons.star, color: Colors.orange,),
                        Icon(Icons.star, color: Colors.orange,),
                        Icon(Icons.star_border),
                        SizedBox(width: 10,),
                        Text('4.0', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          ],
        ),
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
