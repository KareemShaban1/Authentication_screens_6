import 'package:authentication6_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication6_flutter_app/sign_in.dart';
import 'package:authentication6_flutter_app/sign_up_dark.dart';
import 'package:authentication6_flutter_app/welcome.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpDark()),);

                  } else {
                    _icon = Icons.wb_sunny;

                  }

                },
              ),

            ],
          ),

          body: FadeAnimation(1.6,Container(
            decoration: BoxDecoration(color: Colors.white),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Hello there,',style: TextStyle(color: Colors.grey[900],fontSize: 30),),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text('Sign Up to continue',style: TextStyle(color: Colors.grey[700],fontSize: 20),),
                ),

                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],

                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "User name",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.person,color: Colors.lightBlueAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[50],

                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Phone number",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            icon: Icon(Icons.phone,color: Colors.lightBlueAccent,)
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.grey[50],

                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(

                        decoration: InputDecoration(
                            hintText: "Email ",
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
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
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

                SizedBox(height: 40,),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                      height: 45,
                      width: 350,
                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(25),
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
                          child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold,),),
                        ),

                      )
                  ),
                ),


                SizedBox(height: 120,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Text.rich(
                      TextSpan(
                          text: "Already have an account ? ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,

                          ),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Sign In',
                              style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
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
