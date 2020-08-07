import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/home_tabs/item_details.dart';

class TabNewList extends StatefulWidget {
  @override
  _TabNewListState createState() => _TabNewListState();
}

class _TabNewListState extends State<TabNewList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.GrayBack,
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('أحدث الوجبات من المطبخ', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold,),)),
                ),

                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),
                itemCard(),

              ],
            ),
          ),
        ),
    );
  }
}

class itemCard extends StatelessWidget {

  Future<String> createAlertDialog(BuildContext context){

    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.close, color: Colors.red,),
            Text('اضافة الوجبة', style: TextStyle(color: CustomColors.Primary),),
          ],
        ),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'اختيار نوع الوجبة',
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

                hintText: 'افطار',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 15,),

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

                hintText: 'عنوان البيت',
                hintStyle: TextStyle(fontSize: 15),

              ),
            ),

            SizedBox(height: 15,),

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
            SizedBox(height: 8,),
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

            SizedBox(height: 15,),

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

            SizedBox(height: 15,),

            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'ملاحظات خاصة',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8,),
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
                  'اضافة الوجبة',
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
    return  Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push( context, MaterialPageRoute(builder: (context) => ItemDetails()),);
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
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
                           createAlertDialog(context).then((value){
                             SnackBar mySnakBar = SnackBar(content: Text('شكرا لك'));
                             Scaffold.of(context).showSnackBar(mySnakBar);
                           });
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
              SizedBox(width: 5,),
              Image.asset('images/food_five.png', fit: BoxFit.cover,),
            ],
          ),
        ),
      ),
    );
  }
}


//Widget itemContainer(BuildContext context, image){
//  return  Padding(
//    padding: EdgeInsets.only(bottom: 15.0),
//    child: GestureDetector(
//      onTap: (){
//        Navigator.push( context, MaterialPageRoute(builder: (context) => ItemDetails()),);
//      },
//      child: Container(
//        height: 100,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(5),
//          color: Colors.white,
//        ),
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Padding(
//              padding: EdgeInsets.all(5.0),
//              child: Center(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Align(alignment: Alignment.centerRight,child: Text('وجبة افطار', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.black),)),
//                    SizedBox(height: 10,),
//                    Container(
//                      height: 30,
//                      decoration: BoxDecoration(
//                        border: Border.all(color: CustomColors.PrimaryHover),
//                      ),
//                      child: RaisedButton(
//                        elevation: 0,
//                        onPressed: (){
//
//                        },
//                        color: Colors.white,
//                        child: Text('اضف لوجباتي', style: TextStyle(color: CustomColors.Primary),),
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            SizedBox(width: 20,),
//            Padding(
//              padding: EdgeInsets.all(5.0),
//              child: Center(
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    Align(alignment: Alignment.centerRight ,child: Text('اسم الوجبة', style: TextStyle(fontSize: 20, color: CustomColors.SecondaryHover, fontWeight: FontWeight.bold),)),
//                    SizedBox(height: 10,),
//                    Align(
//                      alignment: Alignment.centerRight,
//                      child: Row(
//                        children: <Widget>[
//                          Text("150", style: TextStyle(fontSize: 18, color: CustomColors.Primary),),
//                          Text('سعر الوجبه ', style: TextStyle(fontSize: 18, color: Colors.grey),),
//                        ],
//                      ),
//                    ),
//                  ],
//                ),
//              ),
//            ),
//            SizedBox(width: 5,),
//            Image.asset(image, fit: BoxFit.cover,),
//          ],
//        ),
//      ),
//    ),
//  );

