//Prescription





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/topmenu.dart';

import 'package:flutterpara/IpdTopEditMenu.dart';

import 'package:flutter/material.dart';


page30() {

  return Container(
      child: Column(
          children : [
            topeditmenu(),
            Container(

              //height: MediaQuery.of(context).size.height*0.76,
              child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  //for(int i=0;i<menu.length;i++)
                  return InkWell(
                    onTap: (){
                      // setState(() {
                      //   //tab=i;
                      // })
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
                                                child: Text("IPD NO",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:  Colors.grey
                                                ),),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  //   width: MediaQuery.of(context).size.width*0.3,
                                                    alignment: Alignment.centerLeft,
                                                    child: Text("IPDN 6",style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        color: Colors.blue[800]
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
                                                child: Text("Date",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey
                                                ),),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  //   width: MediaQuery.of(context).size.width*0.3,
                                                    alignment: Alignment.centerLeft,
                                                    child: Text("10-08-21",style: TextStyle(
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
                                            width: MediaQuery.of(context).size.width*0.5,
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
                                            width: MediaQuery.of(context).size.width*0.5,
                                            child:  Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(left: 8,right: 8),
                                                  width: MediaQuery.of(context).size.width*0.3,
                                                  child: Text("Prescription No",style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey
                                                  ),),
                                                ),
                                                Flexible(
                                                  child: Container(
                                                    //   width: MediaQuery.of(context).size.width*0.3,
                                                      alignment: Alignment.centerLeft,
                                                      child: Text("3",style: TextStyle(
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
      )
  );
}