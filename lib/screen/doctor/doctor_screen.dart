import 'package:flutter/material.dart';
import 'package:mylamesy/screen/doctor/doctor_profile.dart';
import 'package:mylamesy/style/theme.dart';

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.GrayBack,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            width: 392.0,
            child: TextField(
              autofocus: false,
              onChanged: (value){},
              cursorColor: Colors.black,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'البحث السريع عن الاطباء',
                prefixIcon: Icon(
                  Icons.search,
                  color: CustomColors.Primary,
                  size: 30,
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Center(
                      child: Text('قائمة الاطباء', style: TextStyle(
                          fontSize: 30,
                          color: CustomColors.Primary,
                          fontWeight: FontWeight.bold),)),
                ),

                itemContainer(context, 'images/food.png'),
                itemContainer(context, 'images/food_five.png'),
                itemContainer(context, 'images/food.png'),
                itemContainer(context, 'images/food_five.png'),
                itemContainer(context, 'images/food.png'),
                itemContainer(context, 'images/food_five.png'),
                itemContainer(context, 'images/food.png'),
                itemContainer(context, 'images/food_five.png'),
                itemContainer(context, 'images/food.png'),
                itemContainer(context, 'images/food_five.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget itemContainer(BuildContext context, image) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => DoctorProfile(),),);
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
                      Align(alignment: Alignment.centerRight,
                          child: Text('سعر الجلسة', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black),)),
                      SizedBox(height: 10,),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColors.PrimaryHover),
                        ),
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {

                          },
                          color: Colors.white,
                          child: Text('150', style: TextStyle(
                              color: CustomColors.Primary, fontSize: 18),),
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
                      Align(alignment: Alignment.centerRight,
                          child: Text('اسم الطبيب', style: TextStyle(
                              fontSize: 20,
                              color: CustomColors.SecondaryHover,
                              fontWeight: FontWeight.bold),)),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('تخصص الطبيب', style: TextStyle(
                            fontSize: 16, color: Colors.black),),
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
