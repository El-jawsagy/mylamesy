import 'package:flutter/material.dart';
import 'package:mylamesy/style/theme.dart';


class RegisterDataScreen extends StatefulWidget {
  @override
  _RegisterDataScreenState createState() => _RegisterDataScreenState();
}

class _RegisterDataScreenState extends State<RegisterDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/login_cover.png'), fit: BoxFit.cover),),
            child: Column(
              children: <Widget>[

                // bannar text
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          CustomColors.Secondary,
                          CustomColors.Primary,
                        ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(100, 100),
                      bottomRight: Radius.elliptical(100, 100),
                    ),
                  ),
                  child: Center(
                    child: Text('استكمال معلومات الحساب',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 20.0,),

                      // country
                      _swipTextField('الدولة',),
                      SizedBox(height: 20.0,),

                      // city
                      _swipTextField('المدينة',),
                      SizedBox(height: 20.0,),

                      // order address
                      _normalTextField('عنوان الشحن',),
                      SizedBox(height: 20.0,),

                      // phone number
                      _normalTextField('رقم الهاتف',),
                      SizedBox(height: 20.0,),

                      // ask question
                      _swipTextField('اختيار سؤال الأمان عند نسيان كلمة المرور',),
                      SizedBox(height: 20.0,),

                      // answer question
                      _normalTextField('إجابة سؤال الأمان',),
                      SizedBox(height: 20.0,),

                      // custom TextField
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(right: 10.0, top: 8.0),
                          child: Text(
                            'نبذة عن نفسك',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0,),

                      // Material Button
                      Material(
                        color: CustomColors.Primary,
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        elevation: 1.0,
                        child: MaterialButton(
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => LoginValidation(),),);
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'البدء في أستخدام التطبيق',
                            style: TextStyle(color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.bold,),
                          ),
                        ),
                      ),
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

  Widget _swipTextField(String title){
    return TextField(
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

        hintText: title,

      ),
    );
  }

  Widget _normalTextField(String title){
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
}
