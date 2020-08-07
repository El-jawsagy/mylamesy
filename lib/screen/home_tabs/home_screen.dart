import 'package:flutter/material.dart';
import 'package:mylamesy/screen/home_tabs/tab_mylist.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/home_tabs/tab_newlist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  List<Widget> TabsHomePage = [
    TabMyList(),
    TabNewList(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: CustomColors.PrimaryHover,
          actions: <Widget>[
            Container(
              width: 392.0,
              child: TextField(
                autofocus: false,
                onChanged: (value){},
                cursorColor: Colors.black,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'البحث السريع عن الوجبات الصحية',
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
          bottom: TabBar(
            unselectedLabelColor: CustomColors.Primary,
            indicator: BoxDecoration(
              color: CustomColors.Primary,
            ),
            indicatorColor: Colors.white,
            labelColor: Colors.white,

            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('قائمة وصفاتي', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                 ),
                ),
              Tab(
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('إضافة وصفة خاصة', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                ),
              ),
            ],
          ),
        ),
        
        body:  TabBarView(children: TabsHomePage),
      ),
    );
  }
}
