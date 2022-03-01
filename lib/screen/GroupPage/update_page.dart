import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdatePage extends StatefulWidget {
  const UpdatePage({Key? key}) : super(key: key);

  @override
  _UpdatePageState createState() => _UpdatePageState();
}
final _formKey = GlobalKey<FormState>();

updateUser(){
  print('User Updated');
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black54,size: 26),
        backgroundColor: const Color(0xFFFFE57F),
        title: Text('Update User',style: TextStyle(color: Colors.black54),),
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
                  onChanged: (value) => {},
                  decoration: const InputDecoration(
                      labelText: 'Group Name',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
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
                  onChanged: (value) => {},
                  decoration: const InputDecoration(
                      labelText: 'Created By',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
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
                  onChanged: (value) => {},
                  decoration: const InputDecoration(
                      labelText: 'Created On',
                      labelStyle: TextStyle(fontSize: 20),
                      border: OutlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,fontSize: 15)
                  ),
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
                         updateUser();
                         Navigator.pop(context);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFFFE57F)),
                      ),
                      child: const Text('Update',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                  ElevatedButton(
                      onPressed: () {},
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
