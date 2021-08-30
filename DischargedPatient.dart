//Discharged Patient







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/page25.dart';
import 'package:flutterpara/topmenu.dart';

import 'package:flutterpara/IpdTopEditMenu.dart';

import 'package:flutter/material.dart';


class Discharged extends StatefulWidget {
//var data;

@override
_DischargedState createState() => _DischargedState();//this.data);
}

class _DischargedState extends State<Discharged> {

  //_DischargedState();

  @override
  final globalKey2 = GlobalKey<ScaffoldState>();
  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

        appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * 0.08),
          child: AppBar(
            backgroundColor: Color(0xFFF3F5F8),
            leading: InkWell(
                onTap: (){
                  //Navigator.pop(context);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => page25()));
                  //  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>OPDPatient()), (route) => false);
                },
                child: Icon(Icons.keyboard_backspace,color: Colors.black,)),
            automaticallyImplyLeading: true,
            title: Container(
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width*0.4,
                child: Image.asset("assets/icons/complete logo.png")),

            actions: [
              Container(
                width:MediaQuery.of(context).size.width*0.46 ,
                padding: EdgeInsets.all(8),
                child: TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: new BorderSide(color: Colors.grey)
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                      hintText: "Search Patient",
                      suffixIcon: Icon(Icons.search_outlined),
                      fillColor: Colors.white70),
                ),
              )
            ],
            elevation: 4,
          ),
        ),

        body : Container(
          child: Column(
              children: [
                //topeditmenu(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Text(
                          'IPD Discharged Patient',//.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Row(
                        children: [
                          ImageIcon(AssetImage("assets/icons/copy.png")),
                          ImageIcon(AssetImage("assets/icons/dowload.png")),
                          ImageIcon(
                            AssetImage("assets/icons/doc.png"), size: 20,),
                          ImageIcon(AssetImage("assets/icons/pdf.png")),
                          ImageIcon(AssetImage("assets/icons/print.png")),
                          ImageIcon(AssetImage("assets/icons/split.png")),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: width * 0.93,
                      margin: EdgeInsets.only(
                          left: width * 0.05, top: 15, bottom: 20),
                      height: 30,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.3,
                            child: TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.search),
                                  hintText: "Search...",
                                  hintStyle: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),


                Container(

                  //height: MediaQuery.of(context).size.height*0.76,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      //for(int i=0;i<menu.length;i++)
                      return InkWell(
                        onTap: () {
                          // setState(() {
                          //   //tab=i;
                          // })
                          print("trigerred");
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => topmenu()));
                        },
                        child: Card(
                          shadowColor: const Color(0xff1a14d1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20))),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width*0.5,
                                      child: Text(
                                        "SHIVANI",
                                        style: TextStyle(
                                            color: const Color(0xff1a14d1),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15

                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 19.2,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.35,
                                          child: Text(
                                            "ID-1000000000094",style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey
                                          ),
                                          ),
                                        ),


                                        Container(
                                          width: MediaQuery.of(context).size.width*0.04,
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
                                  height: 5,
                                ),

                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width * 0.5,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width * 0.5,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                    child: Text(
                                                      "Gender", style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.grey
                                                        ,fontSize: 10
                                                    ),),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text("Female",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              fontSize: 10//color: Colors.blue[800]
                                                          ),)),
                                                  )
                                                ],
                                              ),
                                            ),


                                            SizedBox(
                                              height: 10,
                                            ),

                                            Container(
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width * 0.5,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                    child: Text(
                                                      "Phone", style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.grey
                                                        ,fontSize: 10
                                                    ),),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text("988877711",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors.grey,fontSize: 10
                                                          ),)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width * 0.5,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                    child: Text(
                                                      "Consultant", style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.grey,fontSize: 10
                                                    ),),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text("Default Doctor",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors.grey,fontSize: 10
                                                          ),)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width * 0.5,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                    child: Text(
                                                      "Admission Date", style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.grey,fontSize: 10
                                                    ),),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text("10-08-21 1:30 pm",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors.grey,fontSize: 10
                                                          ),)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              width: MediaQuery
                                                  .of(context)
                                                  .size
                                                  .width * 0.5,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8, right: 8),
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                    child: Text(
                                                      "Discharged Date", style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color: Colors.grey,fontSize: 10
                                                    ),),
                                                  ),
                                                  Flexible(
                                                    child: Container(
                                                      //   width: MediaQuery.of(context).size.width*0.3,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Text("10-09-21",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors.grey,fontSize: 10
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
                                        thickness: 0.7,
                                        width: 0.1,


                                      ),

                                      Flexible(
                                        child: Container(
                                          //width: MediaQuery.of(context).size.width*0.9,
                                          child: Column(
                                            children: [
                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                // child:  Row(
                                                //   children: [
                                                //     Container(
                                                //       padding: EdgeInsets.only(left: 8,right: 10),
                                                //       width: MediaQuery.of(context).size.width*0.3,
                                                //       child: Text("Consultant",style: TextStyle(
                                                //           fontWeight: FontWeight.bold,
                                                //           color: Colors.grey
                                                //       ),),
                                                //     ),
                                                //     Flexible(
                                                //       child: Container(
                                                //         //   width: MediaQuery.of(context).size.width*0.3,
                                                //           alignment: Alignment.centerLeft,
                                                //           child: Text("Default Doctor",style: TextStyle(
                                                //             fontWeight: FontWeight.bold,
                                                //             color:  Colors.grey,
                                                //             //fontSize: 10
                                                //           ),)),
                                                //     )
                                                //   ],
                                                // ),
                                              ),


                                              // SizedBox(
                                              //   height: 10,
                                              // ),

                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, right: 8),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.3,
                                                      child: Text(
                                                        "Charges",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            color: Colors.grey,fontSize: 10
                                                        ),),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        //   width: MediaQuery.of(context).size.width*0.3,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text(
                                                            "3000", style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .bold,
                                                              color: Colors.red,
                                                              fontSize: 10
                                                          ),)),
                                                    )
                                                  ],
                                                ),
                                              ),


                                              SizedBox(
                                                height: 10,
                                              ),

                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, right: 8),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.3,
                                                      child: Text(
                                                        "Other Charges", style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          color: Colors.grey,fontSize: 10
                                                      ),),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        //   width: MediaQuery.of(context).size.width*0.3,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("0",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .bold,
                                                                color: Colors.red,fontSize: 10
                                                            ),)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, right: 8),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.3,
                                                      child: Text(
                                                        "Discount", style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          color: Colors.grey,fontSize: 10
                                                      ),),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        //   width: MediaQuery.of(context).size.width*0.3,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("0",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .bold,
                                                                color: Colors.red,fontSize: 10
                                                            ),)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, right: 8),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.3,
                                                      child: Text(
                                                        "Tax", style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          color: Colors.grey,fontSize: 10
                                                      ),),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        //   width: MediaQuery.of(context).size.width*0.3,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("0",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .bold,
                                                                color: Colors.red,fontSize: 10

                                                            ),)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: MediaQuery
                                                    .of(context)
                                                    .size
                                                    .width * 0.5,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          left: 8, right: 8),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.3,
                                                      child: Text(
                                                        "Paid Amount", style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .bold,
                                                          color: Colors.grey,fontSize: 10
                                                      ),),
                                                    ),
                                                    Flexible(
                                                      child: Container(
                                                        //   width: MediaQuery.of(context).size.width*0.3,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Text("3000",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .bold,
                                                                color: Colors.red,fontSize: 10
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

              ]
          ),
        )
    );
  }
}