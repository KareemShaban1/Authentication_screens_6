import 'package:authentication6_flutter_app/sign_in.dart';
import 'package:authentication6_flutter_app/sign_in_dark.dart';
import 'package:authentication6_flutter_app/sign_up.dart';
import 'package:authentication6_flutter_app/sign_up_dark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

          body: Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [

                Container(
                  height: 330,
                  width: 450,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("assets/bg.png"),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),

                SizedBox(height: 50,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text('Hello!',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                ),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Text('Welcome to sales TOP A Platform to \n      Manage real Estate needs',style: TextStyle(color: Colors.grey,fontSize: 16),),
                ),



                SizedBox(height: 30,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45),
                  child: Row(
                    children: [

                      Container(
                          height: 45,
                          width: 150,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(25),
                              color: Colors.yellow

                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                            },
                            child: Center(
                              child: Text("Sign In", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold,),),
                            ),

                          )
                      ),

                      SizedBox(width: 20,),

                      Container(
                          height: 45,
                          width: 150,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(


                              borderRadius: BorderRadius.circular(25),

                              color: Colors.black87

                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                            },
                            child: Center(
                              child: Text("Sign Up", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold,),),
                            ),

                          )
                      ),

                    ],
                  ),
                ),

                SizedBox(height: 20),

                Text('Or via social media',style: TextStyle(color: Colors.grey[500],fontSize: 16),),




                SizedBox(height: 20),

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








              ],
            ),
          ),

    ));
  }
}

