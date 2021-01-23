import 'package:authentication6_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication6_flutter_app/sign_in_dark.dart';
import 'package:authentication6_flutter_app/sign_up.dart';
import 'package:authentication6_flutter_app/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  var _icon = Icons.brightness_2;

  bool rememberMe = false;

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(


        child: Scaffold(

          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Welcome()),),
            ),

            actions: [
              IconButton(
                icon: Icon(
                  _icon,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {

                  if (_icon == Icons.brightness_2) {
                    _icon = Icons.wb_sunny;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignInDark()),);

                  } else {
                    _icon = Icons.wb_sunny;

                  }

                },
              ),

            ],
          ),



          body: FadeAnimation(1.6,Container(

            decoration: BoxDecoration(
                color: Colors.white
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Welcome Back,',style: TextStyle(color: Colors.grey[900],fontSize: 30),),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Sign in to continue',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ),

                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      // border: Border(bottom: BorderSide(color: Colors.grey[700]))
                      //   border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.lightBlueAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white12,

                        // border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock,color: Colors.lightBlueAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text('Forget Password ? ',style: TextStyle(color: Colors.blue),)
                    ],

                  ),
                ),

                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                      height: 45,
                      width: 350,
                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.lightBlueAccent
                              ]
                          )
                      ),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                        },
                        child: Center(
                          child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold,),),
                        ),

                      )
                  ),
                ),


                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Text('Or via social media',style: TextStyle(color: Colors.grey[500],fontSize: 16),),
                ),

                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                      },
                      child: Container(
                        child: SvgPicture.asset(
                          "assets/icons/icons-facebook.svg",
                          height: 45,
                          width: 45,
                        ),
                      ),

                    ),

                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                      },
                      child: Container(
                        child: SvgPicture.asset(
                          "assets/icons/icons-google.svg",
                          height: 45,
                          width: 45,
                        ),
                      ),

                    ),

                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => TwitterBody()),);
                      },
                      child: Container(
                        child: SvgPicture.asset(
                          "assets/icons/icons-github.svg",
                          height: 45,
                          width: 45,
                        ),
                      ),

                    ),
                  ],
                ),

                SizedBox(height: 40,),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text.rich(
                      TextSpan(
                          text: "Don't have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                                // single tapped
                              },
                            ),


                          ]
                      )
                  ),
                ),








              ],
            ),
          ),),

    ));
  }
}
