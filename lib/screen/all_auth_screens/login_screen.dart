import 'package:flutter/material.dart';
import 'package:mylamesy/screen/all_auth_screens/login_validation.dart';
import 'package:mylamesy/screen/all_auth_screens/register_screen.dart';
import 'package:mylamesy/style/theme.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
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

                  SizedBox(height: 10,),


                  // logo image
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/logo.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 20.0,),


                  // user name
                  _userEmailTextField(),
                  SizedBox(height: 25),


                  // password
                  _userEmailTextField(),
                  SizedBox(height: 35.0,),


                  // login button
                  _materialButtonLogin('تسجيل الدخول', CustomColors.Primary, (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginValidation(),),);
                  }),
                  SizedBox(height: 25),


                  // facebook Login Button
                  _materialButtonLogin('تسجيل الدخول بالفيس بوك', CustomColors.Facebook,null),
                  SizedBox(height: 25),


                  // google login button
                  _materialButtonLogin('تسجيل الدخول بجوجل', CustomColors.Google, null),
                  SizedBox(height: 40),


                  // sign in button
                  _materialButtonLogin('إنشاء حساب جديد', CustomColors.SecondaryHover, (){Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),),);}),

                ],
              ),
            ),
          ),
        ],
      ),
    );

  }

  Widget _userEmailTextField(){
    return  TextField(
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

        hintText: 'اسم المستخدم',

      ),
    );
  }
  Widget _userPasswordTextField(){
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

        hintText: 'كلمة مرور الحساب',

      ),
    );
  }
  Widget _materialButtonLogin(String title,Color color,Function onPressed){
    return Material(
      color: color,
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      elevation: 1.0,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 200.0,
        height: 42.0,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold,),
        ),
      ),
    );
  }
}
