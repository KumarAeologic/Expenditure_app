import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import '../login_screen.dart';
import 'add_group.dart';

class GroupPage extends StatefulWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  deleteUser(id) {
    print('User Deleted $id');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFE57F),
        iconTheme: const IconThemeData(color: Colors.black54,size: 26),
        title: Row(
          children: const [
            SizedBox(width: 55,),
            Text('Group Page',style: TextStyle(color: Colors.black54),),
          ],
        ),
        //centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddGroup(),));
            },
            child: const Text('Add Group',style: TextStyle(fontSize: 18,color: Colors.black54),),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            const UserAccountsDrawerHeader(
                accountName: Text('Vishesh Kumar',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                accountEmail: Text('visheshkumar41@gmail.com',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.greenAccent,
              child: Text(
                "V",style: TextStyle(fontSize: 40),
              ),
            ),
              decoration: BoxDecoration(
                color: Color(0xFFFFE57F)
              ),
            ),
            ListTile(
             leading: Icon(Icons.home),
             title: Text('Home'),
             onTap: () {
               Navigator.pop(context);
             },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('LogOut'),
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            }
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              1: FixedColumnWidth(80),
              2: FixedColumnWidth(80),
              0: FixedColumnWidth(40),
              3: FixedColumnWidth(80),
            },
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                  children: [
                    TableCell(
                        child: Container(
                          color: Colors.greenAccent,
                          child: const Center(
                            child: Text("S/No.",style: TextStyle(
                                fontSize: 13,fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                    TableCell(
                        child: Container(
                          color: Colors.greenAccent,
                          child: const Center(
                            child: Text("Group Name",style: TextStyle(
                                fontSize: 13,fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                    TableCell(
                        child: Container(
                          color: Colors.greenAccent,
                          child: const Center(
                            child: Text("Created By",style: TextStyle(
                                fontSize: 13,fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                    TableCell(
                        child: Container(
                          color: Colors.greenAccent,
                          child: const Center(
                            child: Text("Created On",style: TextStyle(
                                fontSize: 13,fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                    TableCell(
                        child: Container(
                          color: Colors.greenAccent,
                          child: const Center(
                            child: Text("Action",style: TextStyle(
                                fontSize: 13,fontWeight: FontWeight.bold
                            ),),
                          ),
                        )),
                  ]
              ),
              TableRow(
                  children: [
                    const TableCell(
                        child: Center(
                          child: Text("1",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("A",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("Piyush",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("10/1/2021",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    TableCell(
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.edit_rounded,size: 17,)),
                          IconButton(onPressed: () => {
                            deleteUser(1),
                          },
                              icon: const Icon(Icons.delete,size: 17,)),
                        ],
                      ),
                       ),
                  ]
              ),
              TableRow(
                  children: [
                    const TableCell(
                        child: Center(
                          child: Text("2",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("B",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("Prince",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("15/2/2021",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.edit_rounded,size: 17,)),
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.delete,size: 17,)),
                        ],
                      ),
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    const TableCell(
                        child: Center(
                          child: Text("3",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("C",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("Mausham",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("21/3/2021",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.edit_rounded,size: 17,)),
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.delete,size: 17,)),
                        ],
                      ),
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    const TableCell(
                        child: Center(
                          child: Text("4",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("D",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("Nishav",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("05/4/2021",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.edit_rounded,size: 17,)),
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.delete,size: 17,)),
                        ],
                      ),
                    ),
                  ]
              ),
              TableRow(
                  children: [
                    const TableCell(
                        child: Center(
                          child: Text("5",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("E",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("Meenakshi",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    const TableCell(
                        child: Center(
                          child: Text("14/5/2021",style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.bold
                          ),),
                        )),
                    TableCell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.edit_rounded,size: 17,)),
                          IconButton(onPressed: () {},
                              icon: const Icon(Icons.delete,size: 17,)),
                        ],
                      ),
                    ),
                  ]
              ),






            ],
          ),
        ),
      )
    );
  }
}
