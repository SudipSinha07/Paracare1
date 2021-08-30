//top edit menu ipd

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/topmenu.dart';

topeditmenu(){
  return Container(
    width: width * 0.93,
    margin: EdgeInsets.only(left: width * 0.05, top: 15, bottom: 20),
    height: 30,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        Row(
          children: [
            ImageIcon(AssetImage("assets/icons/copy.png")),
            ImageIcon(AssetImage("assets/icons/dowload.png")),
            ImageIcon(AssetImage("assets/icons/doc.png"), size: 20,),
            ImageIcon(AssetImage("assets/icons/pdf.png")),
            ImageIcon(AssetImage("assets/icons/print.png")),
            ImageIcon(AssetImage("assets/icons/split.png")),
          ],
        )
      ],
    ),
  );
}