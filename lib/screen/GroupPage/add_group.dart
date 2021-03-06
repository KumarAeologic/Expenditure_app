import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class AddGroup extends StatefulWidget {
  const AddGroup({Key? key}) : super(key: key);

  @override
  _AddGroupState createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  final _formKey = GlobalKey<FormState>();
  
  var serialnumber = "";
  var groupname = "";
  var createdby = "";
  var createdon = "";

  final serialnumberController = TextEditingController();
  final groupnameController = TextEditingController();
  final createdbyController = TextEditingController();
  final createdonController = TextEditingController();


  @override
  void dispose(){
    //Clean up the controller when the widget is disposed.
    serialnumberController.dispose();
    groupnameController.dispose();
    createdbyController.dispose();
    createdonController.dispose();
    super.dispose();
  }

  clearText() {
    serialnumberController.clear();
    groupnameController.clear();
    createdbyController.clear();
    createdonController.clear();
  }
  addUser(){
    print('User Added');
  }

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
                  controller: serialnumberController,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Please Enter Serial Number';
                    }
                    if(!RegExp("[0-9]").hasMatch(value)){
                      return 'Please Enter a valid Serial Number ';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                      labelText: 'Group Name',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                   controller: groupnameController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Enter Group Name';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                      labelText: 'Created By',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  controller: createdbyController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Please Valid Text';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                      labelText: 'Created On',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
                  controller: createdonController,
                  validator: (value) {
                    if(value!.isEmpty)
                    {
                      return 'Please Enter Date';
                    }
                    if(!RegExp("[0-9/.-]").hasMatch(value)){
                      return 'Please Enter a valid Date ';
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
                          setState(() {
                            serialnumber = serialnumberController.text;
                            groupname = groupnameController.text;
                            createdby = createdbyController.text;
                            createdon = createdonController.text;
                            addUser();
                            clearText();
                          }
                          );
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFFFE57F)),
                      ),
                      child: const Text('Submit',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                  ElevatedButton(
                      onPressed: () {
                         clearText();
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

