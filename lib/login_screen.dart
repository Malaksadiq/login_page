import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  bool isrememberme=false;
  Widget  buildEmail(){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
         Text('Email'
         ,style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.bold,


         ),
         ),
         SizedBox(height: 10,),
         Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black26,blurRadius: 6,
              offset: Offset(0,9),

              ),

            ]
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.email,color: Color(0xff5ac18e),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
         ),
    ],
  );
}
Widget  buildpassward(){ 
  return
Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
         Text('passward'
         ,style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.bold,


         ),
         ),
         SizedBox(height: 10,),
         Container(
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.black26,blurRadius: 6,
              offset: Offset(0,9),

              ),

            ]
          ),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(Icons.lock,color: Color(0xff5ac18e),
              ),
              hintText: 'passward',
              hintStyle: TextStyle(color: Colors.black38),
            ),
          ),
         ),
    ],
  );


}
Widget buildforgotpasswardbtn(){
 return Container(
    alignment: Alignment.centerRight,
    child: MaterialButton(onPressed: () => print('forgotpassward presseds'),
     padding: EdgeInsets.only(right: 0),
    child:Text('forgot passward?',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
    ),
   
 ); 
}
Widget buildrememberme(){

  return Container(
      height: 20,
      child: Row(
        children: [
          Theme(data:ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(value: isrememberme,
          checkColor: Colors.green,
          activeColor: Colors.white,
          onChanged: (value) => setState(() {
            isrememberme=value!;
          }),
          
          
          ),
          ),
          Text('remember me!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ],
      ),
  );
}
 Widget buildloginbtn(){
        return Container(
            padding: EdgeInsets.symmetric(vertical: 25),
            width: double.infinity,
            child: MaterialButton(onPressed: () => print('login pressed'),
            elevation: 5,
            padding: EdgeInsets.all(15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            child: Text('LOGIN',style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold,color: Color(0xff5ac18e)),),

            ),             
        );
       }
       buildsignupbtn(){
        return GestureDetector(onTap: (() => print('sign up prssed')),
            child:RichText(text:TextSpan(children: [
              TextSpan(
                text: 'Dont\ have an Account?',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500)
              ),
                TextSpan(text: 'SIGN UP',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)) 
            ]),
            ) ,
        );

       }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                     height: double.infinity,
                     width: double.infinity,
                     decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                       end: Alignment.bottomCenter,
                       colors: [
                        Color(0x665ac18e),
                         Color(0x995ac18e),
                          Color(0xcc5ac18e),
                           Color(0xff5ac18e),
                       ]
                      )
                     ),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 120),

                           child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('sign in',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                          
                        SizedBox(height: 50,),
                        buildEmail(),
                        SizedBox(height: 20,),
                        buildpassward(),
                        buildforgotpasswardbtn(), 
                        buildrememberme(), 
                        buildloginbtn(),
                        buildsignupbtn(),
                        ],
                      ),

                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}