//top menu

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpara/page25.dart';
import 'package:flutterpara/page26.dart';
import 'package:flutterpara/page27.dart';
import 'package:flutterpara/page28.dart';
import 'package:flutterpara/page38.dart';


int tab=0;
double width=0;
double height=0;

// Color b_color=Color(0xff2E13D1);
// Color shadow_color=Color(0xffC1C6F2);
// Color text_color=Colors.black.withOpacity(0.5);

List menu=[
  {
    "icon":"7104608081548233620-128.png",
    "title":"Details",
  },

  {
    "icon":"8809785241586787932-128 (1).png",
    "title":"Consultant Register",
  },

  {
    "icon":"10295499861529659195-128.png",
    "title":"Diagnosis",
  },

  {
    "icon":"8581338921579330990-128.png",
    "title":"Timeline",
  },

  {
    "icon":"15079590851536572528-128.png",
    "title":"Prescription",
  },

  {
    "icon":"chemist.png",
    "title":"Pathology",
  },
];
class topmenu extends StatefulWidget {
  //var data;
  //topmenu(this.data);




  @override
  _topmenuState createState() => _topmenuState();//this.data);
}

class _topmenuState extends State<topmenu> with SingleTickerProviderStateMixin {
  //var data;
  //_topmenuState(this.data);
  _topmenuState();

  @override
  void initState() {
    super.initState();
    print("\npatient_id:patient_unique_id\nname:patient_name\nid:123");
    tab=0;
  }


  @override
  Widget build(BuildContext context) {
    width= MediaQuery.of(context).size.width;
    height= MediaQuery.of(context).size.height;
    return Scaffold(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: tab!=1 && tab!=5?SizedBox(
        height:   MediaQuery.of(context).size.height*0.10,
        width:   MediaQuery.of(context).size.width*0.5,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor:const Color(0xfffefeff),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => page38()));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // tab==1?
                // ImageIcon(
                //   AssetImage("assets/icons/revisit.png"),
                //   color: Color(0xff2E13D1),
                // )
                //     : tab==4?
                Icon(
                  Icons.add,
                  color: Color(0xff2E13D1),
                ),
                //     :ImageIcon(
                //   AssetImage("assets/icons/re.png"),
                //   color: Color(0xff2E13D1),
                // ),
                Text(
                  //tab==1?"Revisit":
                  //tab==4?"Add Timeline":
                  "Add Patient",
                  style: TextStyle(
                      fontSize: 4,
                      color: const Color(0xff1a14d1),
                      fontWeight: FontWeight.bold
                  ),
                )

              ],
            ),
            elevation: 2.0,
          ),
        ),
      ):null,
      bottomNavigationBar:BottomAppBar(
        child: Container(
          //  height:  MediaQuery.of(context).size.height*0.07,
          decoration: BoxDecoration(
              color: const Color(0xff1a14d1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
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
                  AssetImage("assets/icons/19339625881548233621-128 (1).png"),
                  color: Colors.white,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        width: width,
        height:height,
        decoration: BoxDecoration(
          color: const Color(0xfff4fcfd),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: width,
                  height: height * 0.1,
                  color: Colors.white,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      for(int i=0;i<menu.length;i++)
                        InkWell(
                          onTap: (){
                            setState(() {
                              tab=i;
                            });
                          },
                          child:Container(
                            width: MediaQuery.of(context).size.width*0.1666,
                            decoration: BoxDecoration(
                                color:  tab==i? Color(0xfff4fcfd):Colors.white,
                                border: Border.all(
                                    color: Colors.black
                                )
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height * 0.05,
                                  child:ImageIcon(
                                    AssetImage("assets/icons/${menu[i]["icon"]}"),
                                    color:Color(0xff1a14d1),
                                    size: 35,
                                  ),
                                ),
                                Text(
                                  menu[i]["title"],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 9,
                                      color: Colors.grey
                                  ),
                                )
                              ],
                            ),
                          ),

                        ),
                    ],
                  )),
              tab==0?page26():tab==1?page27():tab==2?page28():Container()//:tab==3?page20():tab==4?page21():Container()
            ],
          ),
        ),
      ),
    );
  }


}
