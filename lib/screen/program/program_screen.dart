import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mylamesy/screen/program/program_details_screen.dart';
import 'package:mylamesy/style/theme.dart';

class ProgramScreen extends StatefulWidget {
  @override
  _ProgramScreenState createState() => _ProgramScreenState();
}

class _ProgramScreenState extends State<ProgramScreen> {
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
                hintText: 'البحث السريع عن البرامج التفاعلية',
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
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Align(
                alignment: Alignment.center,
                child: Text('البرامج التفاعلية', style: TextStyle(fontSize: 30, color: CustomColors.Primary, fontWeight: FontWeight.bold),)),
          ),
         Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      getExpanded('images/food_four.png', 'عنوان مؤقت'),
                      getExpanded('images/food_five.png', 'عنوان مؤقت'),
                    ],
                  ),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('images/food.png', 'عنوان مؤقت'),
                    getExpanded('images/food_two.png', 'عنوان مؤقت'),
                  ],
                ),
              ),

              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    getExpanded('images/food_three.png', 'عنوان مؤقت'),
                    getExpanded('images/food_six.png', 'عنوان مؤقت'),
                  ],
                ),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }

  Widget getExpanded(String images, String title,){
    return Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.push( context, MaterialPageRoute(builder: (context) => ProgramDetails(),),);
            },
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(images, height: 170 ,width: double.infinity ,fit: BoxFit.cover,),
                  SizedBox(height: 15,),
                  Align(alignment: Alignment.center,child: Text(title, style: TextStyle(fontSize: 18),)),
                ],
              ),
            ),
          ),
    );
  }

}
