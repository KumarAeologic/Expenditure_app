import 'dart:ui';

import 'package:expendature_app/screen/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'GroupPage/group_page.dart';



class LoginScreen extends StatelessWidget {
   const LoginScreen({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
     return  MaterialApp(
       theme: ThemeData(
        // primarySwatch: Colors.amber,
       ),
       home: const Scaffold(
         body: MyCustomForm(),
       ),
     );
   }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() {
    return _MyCustomFormState();
  }
}
// void _togglePasswordView(){
//   setState(() {
//     _isHidden = !_isHidden;
//   });
// }

class _MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
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
                            padding: const EdgeInsets.fromLTRB(0, 230, 0, 0),
                            child: const Text('Welcome !',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),)
                        ),
                      ),
                      Positioned(
                        left: 100,
                        child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 260, 0, 0),
                            child: const Text('Sign in and get started',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),)
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 600,
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        filled: true,
                        fillColor: Colors.white,
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
                        return 'Please Enter a valid Email';
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        prefixIcon:  Icon(Icons.lock),
                        // suffix: InkWell(
                        //   onTap: _togglePasswordView,
                        //   child: Icon(_isHidden ? Icons.visibility : Icons.visibility_off),
                        // ),
                        hintText: 'Enter Password',
                        labelText: 'Password',
                        labelStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        filled: true,
                        fillColor: Colors.white,enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        )
                    ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(10.0)
                            )
                        ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if(value!.isEmpty)
                      {
                        return 'Please Enter Password';
                      }
                      if(!RegExp("[a-zA-Z0-9+_.-]").hasMatch(value)){
                        return 'Please Enter a valid Password';
                      }
                      return null;
                    },
                  ),
                ),
                FlatButton(
                  onPressed: (){},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Forgot Password',
                        style: TextStyle(color: Colors.black,fontSize: 15),)
                    ],
                  ),
                ),
                Container(
                    width: 400,
                    height: 75,
                    padding: const EdgeInsets.all(15),
                    child: RaisedButton(
                      child: const Text('LOGIN',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white),),
                      color: const Color(0xFFFFE57F),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const GroupPage()),
                          );
                          // Scaffold.of(context)
                          //     .showSnackBar(const SnackBar(content: Text('Data is in processing. ..',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),backgroundColor: Color(0xFFFFE57F) ,));
                        }
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account ?',style: TextStyle(
                        fontSize: 17,fontWeight: FontWeight.bold
                    ),),
                    FlatButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()),
                          );
                        },
                        child: const Text('Sign Up',
                          style: TextStyle(color: Color(0xFFFFE57F),fontSize: 17,fontWeight: FontWeight.bold),)
                    ),
                  ],
                ),

              ],
            ),
          )
        )
    );

  }
}



