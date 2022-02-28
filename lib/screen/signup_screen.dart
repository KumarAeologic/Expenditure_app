import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.jpg'),
                      fit: BoxFit.fill
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      height: 110,
                      child:  IconButton(onPressed: () {
                        Navigator.pop(context);
                      },
                          icon: const Icon(Icons.arrow_back_outlined,size: 33,color: Colors.white,)),
                    ),
                    Positioned(
                      left: 35,
                      width: 80,
                      height: 200,
                      child: SizedBox(
                        height: 200,
                        child: Image.asset('assets/images/light-1.png'),
                      ),
                    ),

                    Positioned(
                      left: 150,
                      width: 80,
                      height: 140,
                      child: SizedBox(
                        child: Image.asset('assets/images/light-2.png'),
                      ),
                    ),
                    Positioned(
                      left: 220,
                      height: 170,
                      child: SizedBox(
                        child: Image.asset('assets/images/clock.png'),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 193, 0, 0),
                          child: const Text('Sign Up',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),)
                      ),
                    ),
                    Positioned(
                      left: 100,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 223, 0, 0),
                          child: const Text('Create an account its free',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),)
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: 600,
                        padding: const EdgeInsets.fromLTRB(7, 335, 7, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: const Icon(Icons.person),
                              hintText: 'Enter you full name',
                              labelText: 'Your Full Name',
                              labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),

                              //filled: true,
                              //fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.0)
                                  )
                              )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 600,
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Enter Email',
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(5.0)
                          )
                      )
                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Please Enter Email';
                    }
                    if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                      return 'Please a valid Email';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: 600,
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon:  Icon(Icons.lock),
                      hintText: 'Enter Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )
                  ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)
                          )
                      )

                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Please Enter Password';
                    }
                    if(!RegExp("[a-zA-Z0-9+_.-]").hasMatch(value)){
                      return 'Please a valid Password';
                    }
                    return null;
                  },

                ),
              ),
              Container(
                width: 600,
                padding: const EdgeInsets.all(5.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon:  Icon(Icons.lock),
                     hintText: 'Enter Confirm Password',
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )
                  ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10.0)
                          )
                      )

                  ),
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Please Enter Password';
                    }
                    if(!RegExp("[a-zA-Z0-9+_.-]").hasMatch(value)){
                      return 'Please a valid Password';
                    }
                    return null;
                  },

                ),
              ),
              Container(
                  width: 190,
                  height: 75,
                  padding: const EdgeInsets.all(15),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                      child: RaisedButton.icon(
                        label: Text('SIGN UP',style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white),),
                       icon: const Icon(Icons.arrow_back,color:Colors.white,size: 30,),
                        color: const Color(0xFFFFE57F),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35.0)
                        ),
                        onPressed: () { },
                      )
                  ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account \?',style: TextStyle(
                      fontSize: 17,fontWeight: FontWeight.bold
                  ),),
                  FlatButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: const Text('Sign In',
                        style: TextStyle(color: Color(0xFFFFE57F),fontSize: 17,fontWeight: FontWeight.bold),)
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}