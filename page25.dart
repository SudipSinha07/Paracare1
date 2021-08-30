//IPD

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/OPD.dart';

import 'package:flutterpara/page26.dart';
import 'package:flutterpara/page38.dart';
import 'package:flutterpara/topmenu.dart';



class page25 extends StatefulWidget {

  @override
  _page25State createState() => _page25State();
}

class _page25State extends State<page25> {

  @override
  final globalKey2 = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();
  var searchedValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: globalKey2,
            resizeToAvoidBottomInset: false,
            floatingActionButtonLocation: FloatingActionButtonLocation
                .centerDocked,
            floatingActionButton: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.10,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.5,
              child: FittedBox(
                child: FloatingActionButton(
                  backgroundColor: const Color(0xfffefeff),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page38()));
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add, color: const Color(0xff1a14d1),),
                      Text("Add Patient", style: TextStyle(
                          fontSize: 4,
                          color: const Color(0xff1a14d1),
                          fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                  elevation: 2.0,
                ),
              ),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Container(
                //  height:  MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                    color: const Color(0xff1a14d1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage("assets/icons/3581263791586787809-128.png"),
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ImageIcon(
                        AssetImage(
                            "assets/icons/19339625881548233621-128 (1).png"),
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),

            drawer:Drawer(
              child: Container(
                color:const Color(0xff1a14d1),
                child: Row(
                  //    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: DrawerHeader(
                            child: InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.close,color: Colors.white,size: 50,)))),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 160,
                        ),
                        TextButton(
                          child : Text('Front Office',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),),
                          onPressed: (){
                            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ));
                          },
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          child : Text('OPD - Out Patient',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => opd()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          child : Text('IPD - Int Patient',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),),
                          onPressed: (){
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page25()));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          child : Text('Pharmacy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),),
                          onPressed: (){
                            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ));
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          child : Text('Pathology',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),),
                          onPressed: (){
                            //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ));
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            appBar: PreferredSize(
              preferredSize:
              Size.fromHeight(60),
              child: AppBar(
                backgroundColor: Color(0xFFF3F5F8),

                flexibleSpace: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        print("open drawer");
                        //globalKey2.currentState!.openDrawer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                            "assets/icons/15211315791553239378-128.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/icons/complete logo.png"),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: TextFormField(
                        controller: searchController,
                        textCapitalization: TextCapitalization.sentences,
                        autofocus: false,
                        onChanged: (value) {
                          //getResults(value);
                          setState(() {
                            searchedValue = value;
                          });
                        },
                        decoration: InputDecoration(
                          hintText: "Search patient",
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: 12),
                          suffixIcon: Icon(
                            Icons.search_outlined, color: Colors.black,
                            size: 30,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.grey
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade700
                              )
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                        ),
                      ),
                    ),

                  ],
                ),

                elevation: 4,

              ),
            ),
            body: SafeArea(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: const Color(0xfff4fcfd),
                    ),
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                                    child: Text(
                                      'IPD Patient',//.toUpperCase(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  ButtonTheme(


                                    //elevation: 4,
                                    //color: Colors.green,
                                    minWidth: double.infinity,
                                    child: MaterialButton(
                                      //onPressed: () => {},
                                      textColor: Colors.white,
                                      color: Colors.blue[500],
                                      height: 20,
                                      minWidth: 100,
                                      child: Text(
                                        "Discharged Patient",

                                      ),
                                      onPressed:() {
                                        //try{
                                        //auth.signInWithEmailAndPassword(email: _email, password: _password).then((_){
                                          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => );
                                        //}
                                        //);
                                        //}
                                        //catch(e){
                                        //print(e.message);
                                        //}
                                        //}
                                      },
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              Container(

                                height: MediaQuery.of(context).size.height*0.76,
                                child: ListView.builder(
                                  itemCount: 4,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  itemBuilder: (context,index){
                                    return InkWell(
                                      onTap: (){
                                        print("trigerred");
                                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => topmenu()));
                                      },
                                      child: Card(
                                        shadowColor:const Color(0xff1a14d1),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        elevation: 5,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.of(context).size.width*0.5,
                                                    child: Text(
                                                      "MOHAN KUMAR",
                                                      style: TextStyle(
                                                          color: const Color(0xff1a14d1),
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 18
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 11.3,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(context).size.width*0.35,
                                                        child: Text(
                                                          "ID-1000000000091",style: TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            color: Colors.grey
                                                        ),
                                                        ),
                                                      ),


                                                      Container(
                                                        width: MediaQuery.of(context).size.width*0.06,
                                                        child: PopupMenuButton(itemBuilder: (BuildContext context) {
                                                          return [
                                                            PopupMenuItem(child:Row(
                                                              children: [
                                                                Icon(Icons.add),
                                                                Icon(Icons.close)
                                                              ],
                                                            ))
                                                          ];
                                                        },),
                                                      ),

                                                    ],
                                                  )
                                                ],
                                              ),

                                              SizedBox(
                                                height: 20,
                                              ),

                                              IntrinsicHeight(
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.of(context).size.width*0.5,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.5,
                                                            child:  Row(
                                                              children: [
                                                                Container(
                                                                  padding: EdgeInsets.only(left: 8,right: 8),
                                                                  width: MediaQuery.of(context).size.width*0.3,
                                                                  child: Text("Token",style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      color:  Colors.grey
                                                                  ),),
                                                                ),
                                                                Flexible(
                                                                  child: Container(
                                                                    //   width: MediaQuery.of(context).size.width*0.3,
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text("---",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          color: Colors.grey
                                                                      ),)),
                                                                )
                                                              ],
                                                            ),
                                                          ),


                                                          SizedBox(
                                                            height: 10,
                                                          ),

                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.5,
                                                            child:  Row(
                                                              children: [
                                                                Container(
                                                                  padding: EdgeInsets.only(left: 8,right: 8),
                                                                  width: MediaQuery.of(context).size.width*0.3,
                                                                  child: Text("Guardian Name",style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      color: Colors.grey
                                                                  ),),
                                                                ),
                                                                Flexible(
                                                                  child: Container(
                                                                    //   width: MediaQuery.of(context).size.width*0.3,
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text("N/A",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          color: Colors.grey
                                                                      ),)),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),

                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.5,
                                                            child:  Row(
                                                              children: [
                                                                Container(
                                                                  padding: EdgeInsets.only(left: 8,right: 8),
                                                                  width: MediaQuery.of(context).size.width*0.3,
                                                                  child: Text("Gender",style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      color:  Colors.grey
                                                                  ),),
                                                                ),
                                                                Flexible(
                                                                  child: Container(
                                                                    //   width: MediaQuery.of(context).size.width*0.3,
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text("Male",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          color:  Colors.grey
                                                                      ),)),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            width: MediaQuery.of(context).size.width*0.5,
                                                            child:  Row(
                                                              children: [
                                                                Container(
                                                                  padding: EdgeInsets.only(left: 8,right: 8),
                                                                  width: MediaQuery.of(context).size.width*0.3,
                                                                  child: Text("Phone",style: TextStyle(
                                                                      fontWeight: FontWeight.bold,
                                                                      color:  Colors.grey
                                                                  ),),
                                                                ),
                                                                Flexible(
                                                                  child: Container(
                                                                    //   width: MediaQuery.of(context).size.width*0.3,
                                                                      alignment: Alignment.centerLeft,
                                                                      child: Text('7894561230',style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          color: Colors.grey,
                                                                          fontSize: 13.1,
                                                                      ),)),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                        ],
                                                      ),
                                                    ),

                                                    VerticalDivider(
                                                      color: Colors.black,
                                                      thickness: 1.1,
                                                      width: 1,

                                                    ),

                                                    Flexible(
                                                      child: Container(
                                                        //     width: MediaQuery.of(context).size.width*0.5,
                                                        child: Column(
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(context).size.width*0.5,
                                                              child:  Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 8,right: 8),
                                                                    width: MediaQuery.of(context).size.width*0.3,
                                                                    child: Text("Consultant",style: TextStyle(
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.grey
                                                                    ),),
                                                                  ),
                                                                  Flexible(
                                                                    child: Container(
                                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                                        alignment: Alignment.centerLeft,
                                                                        child: Text("Default Doctor",style: TextStyle(
                                                                          fontWeight: FontWeight.bold,
                                                                          color:  Colors.grey,
                                                                          //fontSize: 10
                                                                        ),)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),


                                                            SizedBox(
                                                              height: 10,
                                                            ),

                                                            Container(
                                                              width: MediaQuery.of(context).size.width*0.5,
                                                              child:  Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 8,right: 8),
                                                                    width: MediaQuery.of(context).size.width*0.3,
                                                                    child: Text("Last visit",style: TextStyle(
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.grey
                                                                    ),),
                                                                  ),
                                                                  Flexible(
                                                                    child: Container(
                                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                                        alignment: Alignment.centerLeft,
                                                                        child: Text("10-08-21 1:30PM",style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            color: Colors.grey,
                                                                            fontSize: 12
                                                                        ),)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),

                                                            Container(
                                                              width: MediaQuery.of(context).size.width*0.5,
                                                              child:  Row(
                                                                children: [
                                                                  Container(
                                                                    padding: EdgeInsets.only(left: 8,right: 8),
                                                                    width: MediaQuery.of(context).size.width*0.3,
                                                                    child: Text("Total Visit",style: TextStyle(
                                                                        fontWeight: FontWeight.bold,
                                                                        color: Colors.grey
                                                                    ),),
                                                                  ),
                                                                  Flexible(
                                                                    child: Container(
                                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                                        alignment: Alignment.centerLeft,
                                                                        child: Text("1",style: TextStyle(
                                                                            fontWeight: FontWeight.bold,
                                                                            color:  Colors.grey
                                                                        ),)),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),

                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )

                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },

                                ),


                              ),


                              Container(
                                height: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.76,

                              )
                            ]
                        )
                    )
                )
            )
        )
    );
  }
}

