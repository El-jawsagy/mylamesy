import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';
import 'package:mylamesy/screen/main_screen.dart';


class LoginValidation extends StatefulWidget {
  @override
  _LoginValidationState createState() => _LoginValidationState();
}

class _LoginValidationState extends State<LoginValidation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[

          // cover image
          Container(
         decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/validation_cover.png",), fit: BoxFit.cover),),
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 25.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[

               // text
               Align( alignment: Alignment.center ,
                   child: Text("كود التحقق من الهوية" ,
                     style: TextStyle(
                         color: CustomColors.Primary,
                         fontSize: 30,
                         fontWeight: FontWeight.bold),),),


               // text
               Align( alignment: Alignment.center ,
                 child: Text("لقد تم إرسال الكود" ,
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 25, ),),),

               SizedBox(height: 30.0,),


               // code Numbers
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[

                   _codeNumberTextField(),
                   SizedBox(width: 10,),

                   _codeNumberTextField(),
                   SizedBox(width: 10,),

                   _codeNumberTextField(),
                   SizedBox(width: 10,),

                   _codeNumberTextField(),
                 ],
               ),

               SizedBox(height: 40.0,),

               // Material Button
               Material(
                 color: CustomColors.Primary,
                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
                 elevation: 1.0,
                 child: MaterialButton(
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),),);
                   },
                   minWidth: 200.0,
                   height: 42.0,
                   child: Text(
                     'اكمال تسجيل الدخول',
                     style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold,),
                   ),
                 ),
               ),
             ],
           ),
         ),
        ),
        ],
      ),
    );
  }

  Widget _codeNumberTextField(){
    return Container(
      height: 90,
      width: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: TextField(
          showCursor: false,
          autofocus: false,
          onChanged: (value){},
          cursorColor: Colors.black,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            filled: true,
            fillColor: Colors.white,
            hintText: '0',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),

          ),
        ),
      ),
    );
  }
}
