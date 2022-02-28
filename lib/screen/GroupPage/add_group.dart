import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';


class AddGroup extends StatefulWidget {
  const AddGroup({Key? key}) : super(key: key);

  @override
  _AddGroupState createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  final _formKey = GlobalKey<FormState>();
  
  // var serialnumber = "";
  // var groupname = "";
  // var createdby = "";
  // var createdon = "";
  //
  // final serialnumberController = TextEditingController();
  // final groupnameController = TextEditingController();
  // final createdbyController = TextEditingController();
  // final createdonController = TextEditingController();


  @override
  // void dispose(){
  //   serialnumberController.dispose();
  //   groupnameController.dispose();
  //   createdbyController.dispose();
  //   createdonController.dispose();
  //   super.dispose();
  // }

  // clearText() {
  //   serialnumberController.clear();
  //   groupnameController.clear();
  //   createdbyController.clear();
  //   createdonController.clear();
  // }
  // CollectionReference group =
  // FirebaseFirestore.instance.collection('group');
  //   Future<void> addUser(){
  //   return group
  //       .add({'serialnumber': serialnumber, 'groupname' : groupname, 'createdby': createdby, 'createdon': createdon})
  //       .then((value) => print('User Added'))
  //       .catchError((error) => print('Failed to Add User: $error'));
  //   }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black54,size: 26),
        backgroundColor: const Color(0xFFFFE57F),
        title: Text('Add Group',style: TextStyle(color: Colors.black54),),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'Serial Number',
                    labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                    errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  // controller: groupnameController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Group Name',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  // controller: groupnameController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Enter Group Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Created By',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  // controller: groupnameController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Valid Text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Created On',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  // controller: groupnameController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Enter Valid Date';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                       if (_formKey.currentState!.validate()){
                          // setState(() {
                          //   serialnumber = serialnumberController.text;
                          //   groupname = groupnameController.text;
                          //   createdby = createdbyController.text;
                          //   createdon = createdonController.text;
                          //   addUser();
                          //   clearText();
                          // }
                          // );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFFFE57F)),
                      ),
                      child: const Text('Submit',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                  ElevatedButton(
                      onPressed: () {
                        // clearText();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFFFE57F)),
                      ),
                      child: const Text('Reset',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

