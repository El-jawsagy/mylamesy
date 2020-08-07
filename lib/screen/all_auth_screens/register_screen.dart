import 'package:flutter/material.dart';
import 'package:mylamesy/screen/all_auth_screens/register_data_screen.dart';
import 'package:mylamesy/style/theme.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[

          // background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/login_cover.png'), fit: BoxFit.cover),
            ),


            child: Padding(
               padding:  EdgeInsets.symmetric(horizontal: 25.0),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
               SizedBox(height: 30,),

               // logo
               Container(height: 120, width: 100,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage('images/logo_r.png'), fit: BoxFit.contain),
                 ),
              ),


               SizedBox(height: 30,),

               // userName
               _materialTextField('الاسم الاول'),
               SizedBox(height: 25),

               // lastName
               _materialTextField('الاسم الاخير'),
               SizedBox(height: 25),

               // userName
               _materialTextField('اسم المستخدم',),
               SizedBox(height: 25),

               // email
               _materialTextField('البريد الإلكتروني',),
               SizedBox(height: 25),

               // password
               _materialPasswordField('كلمة المرور',),
               SizedBox(height: 25,),

               // password
               _materialPasswordField('تأكيد كلمة المرور',),
              SizedBox(height: 35,),

              // material Button
              Material(
                color: CustomColors.SecondaryHover,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                elevation: 1.0,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterDataScreen(),),);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'إنشاء حساب جديد',
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

  Widget _materialTextField(String title){
   return TextField(
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

        hintText: title,

      ),
    );
  }

  Widget _materialPasswordField(String title){
    return TextField(
    autofocus: false,
    obscureText: true,
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

  hintText: title,

  ),
  );
}

}
