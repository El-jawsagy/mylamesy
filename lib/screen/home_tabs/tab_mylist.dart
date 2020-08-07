import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/home_tabs/item_details.dart';

class TabMyList extends StatefulWidget {
  @override
  _TabMyListState createState() => _TabMyListState();
}

class _TabMyListState extends State<TabMyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.GrayBack,
      body: ListView(
        children: <Widget>[
         Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Center(child: Text('قائمة وجباتي', style: TextStyle(fontSize: 25, color: CustomColors.Secondary, fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                        alignment: Alignment.center,
                      child: Text('وجبات الافطار', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold),)),

                  itemContainer(context,'images/food.png'),
                  itemContainer(context,'images/food_five.png'),

                ],
              ),
            ),
            Divider(
              height: 5.0,
              color: Colors.grey,
              thickness: 1.0,
              endIndent: 15.0,
              indent: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: Text('وجبات الغداء', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold),)),

                  itemContainer(context,'images/food_four.png'),
                  itemContainer(context,'images/food_seven.png'),
                  itemContainer(context,'images/food_six.png'),

                ],
              ),
            ),
            Divider(
              height: 5.0,
              color: Colors.grey,
              thickness: 1.0,
              endIndent: 15.0,
              indent: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: Text('وجبات العشاء', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold),)),

                  itemContainer(context,'images/food_three.png'),
                  itemContainer(context,'images/food.png'),
                  itemContainer(context,'images/food_five.png'),

                ],
              ),
            ),
          ],
        ),
        ],
      ),
    );
  }
  Widget itemContainer(BuildContext context, image){
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
              Image.asset(image, fit: BoxFit.cover,),
            ],
          ),
        ),
      ),
    );
  }
}
