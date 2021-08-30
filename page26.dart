//details

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/topmenu.dart';




page26 (){
  List details=[
    {
      "id":"Patient ID",
      "value":"100000000091",
    },

    {
      "id":"Gender",
      "value":"Male",
    },

    {
      "id":"Marital Status",
      "value":"Married",
    },

    {
      "id":"Phone",
      "value":"9998881777",
    },

    {
      "id":"Email",
      "value":"mohankumar@gmail.com",
    },

    {
      "id":"Address",
      "value":"48, Nehru Nagar, Delhi",
    },

    {
      "id":"Age",
      "value":"45",
    },

    {
      "id":"Guardian Name",
      "value":"Sohan Kumar",
    },
    {
      "id":"Credit Limit",
      "value":"30000",
    },
  ];

  return Center(
    child: Container(
      height: height*0.7,
      width: width*0.9,
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color:Color(0xffC1C6F2),
                blurRadius: 5
            )
          ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageIcon(
              AssetImage("assets/icons/profile.png",),
              color: Color(0xff2E13D1),
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text(
                "Mohan kumar",
                style: TextStyle(
                    color: Color(0xff2E13D1),
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            for(int i=0;i<details.length;i++)
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(bottom: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: width*0.4,
                          child: Text(
                            details[i]["id"],
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width*0.45,
                          child: Text(
                            details[i]["value"],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey
                            ),
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: width*0.8,
                    child: Divider(
                      thickness: 1,
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    ),
  );
}
