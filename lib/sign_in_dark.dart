import 'package:authentication6_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication6_flutter_app/sign_in.dart';
import 'package:authentication6_flutter_app/sign_up.dart';
import 'package:authentication6_flutter_app/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInDark extends StatefulWidget {
  @override
  _SignInDarkState createState() => _SignInDarkState();
}

class _SignInDarkState extends State<SignInDark> {

  var _icon = Icons.wb_sunny;

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
            backgroundColor: Colors.black,
            shadowColor: Colors.transparent,
            leading: IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => Welcome()),),
            ),

            actions: [
              IconButton(
                icon: Icon(
                  _icon,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {

                  if (_icon == Icons.wb_sunny) {
                    _icon = Icons.brightness_2;
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);

                  } else {
                    _icon = Icons.wb_sunny;

                  }

                },
              ),
            ],
          ),

          body:
          FadeAnimation(1.6,Container(

            decoration: BoxDecoration(
                color: Colors.black
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Welcome Back,',style: TextStyle(color: Colors.white,fontSize: 30),),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text('Sign in to continue',style: TextStyle(color: Colors.grey,fontSize: 20),),
                ),

                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      // color: Colors.white24,
                      // border: Border(bottom: BorderSide(color: Colors.amberAccent)),
                        border: Border.all(color: Colors.white38),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Email or Phone number",
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                            icon: Icon(Icons.email,color: Colors.amberAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(


                        border: Border.all(color: Colors.white30),
                        // border: Border(bottom: BorderSide(color: Colors.amberAccent)),
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock,color: Colors.amberAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text('Forget Password ? ',style: TextStyle(color: Colors.amberAccent),)
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

                                // Colors.yellowAccent,
                                Colors.yellow,
                                // Colors.yellowAccent,
                                Colors.amber
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
                              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
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
          ),)

        ));
  }
}
