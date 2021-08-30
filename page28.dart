//Diagnosis
//Consultant Register



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/topmenu.dart';

import 'package:flutterpara/IpdTopEditMenu.dart';

import 'package:flutter/material.dart';



//page28(){
//   return Column(
//     children: [
//       topeditmenu(),
//       for(int i=0;i<3;i++)
//         Container(
//           margin: EdgeInsets.only(top: 20,),
//           padding: EdgeInsets.symmetric(vertical: 10,horizontal: width*0.03),
//           height: 100,
//           width: width*0.9,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               boxShadow: [
//                 BoxShadow(
//                     color: Color(0xffC1C6F2),
//                     blurRadius: 5
//                 )
//               ]
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 width: width*0.4,
//                 height: 100,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Report Type",
//                           style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.grey.withOpacity(0.8),
//                                     blurRadius: 5,
//                                     offset: Offset(2,2)
//                                 )
//                               ]
//                           ),
//                         ),
//                         Text(
//                           "Hospital",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.grey.withOpacity(0.8),
//                                     blurRadius: 5,
//                                     offset: Offset(2,2)
//                                 )
//                               ]
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Albumin(BCG)",
//                           style: TextStyle(
//                               color: Color(0xff2E13D1),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600
//                           ),
//                         ),
//                         Text(
//                           "Paracare+",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(0.5),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 100,
//                 child: VerticalDivider(
//                   color: Colors.black,
//                   thickness: 1,
//                 ),
//               ),
//               SizedBox(
//                 width: width*0.4,
//                 height: 100,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "Report Date",
//                           style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.grey.withOpacity(0.8),
//                                     blurRadius: 5,
//                                     offset: Offset(2,2)
//                                 )
//                               ]
//                           ),
//                         ),
//                         Text(
//                           "Description",
//                           style: TextStyle(
//                               color: Colors.black.withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w600,
//                               shadows: [
//                                 Shadow(
//                                     color: Colors.grey.withOpacity(0.8),
//                                     blurRadius: 5,
//                                     offset: Offset(2,2)
//                                 )
//                               ]
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "05-08-2021 \n4:53 PM",
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(0.5),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                         Text(
//                           "None",
//                           style: TextStyle(
//                             color: Colors.black.withOpacity(0.5),
//                             fontSize: 12,
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//
//         )
//     ],
//   );
//
// }


page28() {

  return Container(
      child: Column(
          children : [
            topeditmenu(),
            Container(

              //height: MediaQuery.of(context).size.height*0.76,
              child: ListView.builder(
                itemCount: 4,
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
                                                child: Text("Report Type",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color:  Colors.grey
                                                ),),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  //   width: MediaQuery.of(context).size.width*0.3,
                                                    alignment: Alignment.centerLeft,
                                                    child: Text("Blood",style: TextStyle(
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
                                                child: Text("Description",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey
                                                ),),
                                              ),
                                              Flexible(
                                                child: Container(
                                                  //   width: MediaQuery.of(context).size.width*0.3,
                                                    alignment: Alignment.centerLeft,
                                                    child: Text("Blood Test",style: TextStyle(
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
                                                  child: Text("Report Date",style: TextStyle(
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