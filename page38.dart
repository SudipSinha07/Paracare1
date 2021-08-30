//Add Patient

import 'package:flutter/material.dart';
import 'package:flutterpara/page25.dart';

List bloodgroup=["A+","O+","O-","B+","B-"];
List nationality=["India","Australia","New Zealand","South Africa"];
List religion=["Hindu","Muslim","Christian","Sikh"];
List dietry=["Dietry1","Dietry2","Dietry3","Dietry4"];
List category=["Category1","Category2","Category3","Category4"];

class page38 extends StatefulWidget {
  //LoginResponse loginResponse;
  //AddPatient(this.loginResponse);


  @override
  _page38State createState() => _page38State();
}

class _page38State extends State<page38> {


  //LoginResponse loginResponse;
  //_AddPatientState(this.loginResponse);

  String _selectedsearchBy = 'Phone';
  String symptomsTypeValue="Type1"; List symptomsType=['Type1', 'Type2', 'Type3','Type4'];
  String gendervalue="Male";List gender=["Male","Female"];
  String bloodgroupvalue=bloodgroup[0];//List bloodgroup=["A+","O+","O-","B+","B-"];
  String nationalityvalue=nationality[0];//List nationality=["India","Australia","New Zealand","South Africa"];
  String religionvalue=religion[0];//List religion=["Hindu","Muslim","Christian","Sikh"];
  String dietryvalue=dietry[0];//List dietry=["Dietry1","Dietry2","Dietry3","Dietry4"];
  String categoryvalue="Category1";//List category=["Category1","Category2","Category3","Category4"];
  dynamic maritalstatus;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }



  final GlobalKey<FormState> addPatientFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return SafeArea(

      //bloc: cubit,

        child: Scaffold(
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: SizedBox(
            height:   MediaQuery.of(context).size.height*0.10,
            width:   MediaQuery.of(context).size.width*0.5,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor:const Color(0xfffefeff),
                onPressed: () {
                  Navigator.pop(context);
                },
                child:  Icon(Icons.close,
                  size: 30,
                  color: const Color(0xff1a14d1),),
                elevation: 2.0,
              ),
            ),
          ),
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
          resizeToAvoidBottomInset: true,


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
                          //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ));
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


          body: Builder(
            builder: (context) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Form(
                  key: addPatientFormKey,
                  child: Column(
                      children:[
                        Container(
                          height: 60,
                          color: Color(0xFFF3F5F8),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: (){
                                  print("open drawer");
                                  Scaffold.of(context).openDrawer();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icons/15211315791553239378-128.png"),
                                ),
                              ),
                              Container(
                                  width:MediaQuery.of(context).size.width*0.35 ,
                                  child: Image.asset("assets/icons/complete logo.png",fit: BoxFit.contain,)),
                              Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Container(
                                  width:MediaQuery.of(context).size.width*0.46 ,
                                  padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(30.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(30.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        hintStyle: TextStyle(color: Colors.grey,fontSize: 12),
                                        hintText: "Search Patient",
                                        suffixIcon: Icon(Icons.search_outlined),
                                        fillColor: Colors.white70),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),


                        Container(
                          width: MediaQuery.of(context).size.width,
                          color:const Color(0xff1a14d1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Add Patient",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,

                            ),),
                          ),
                        ),


                        SizedBox(
                          height: 20,
                        ),


                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Search By',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Phone',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      )),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),


                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.48,
                              child: Row(
                                children: [
                                  Radio(
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    value: 'Phone',
                                    groupValue: _selectedsearchBy,
                                    onChanged: (value) {

                                    },
                                  ),
                                  Text("Phone",style: TextStyle(
                                      fontSize: 12
                                  ),),
                                  Radio(
                                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    value: 'Health ID',
                                    groupValue: _selectedsearchBy,
                                    onChanged: (value) {
                                      //setState(() {
                                      //  _selectedsearchBy = value as String?;
                                      //});
                                    },
                                  ),
                                  Text("Health ID",style: TextStyle(
                                      fontSize: 12
                                  ),),
                                ],
                              ),
                            ),


                            //phone field
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    //controller: cubit.mobileno,
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'Phone no is required';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 10,
                        ),



                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Name',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      )),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Guardian Name',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),

                          ],
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.45,

                                  child: TextFormField(
                                    //controller: cubit.patient_name,
                                    keyboardType: TextInputType.text,
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'Name is required';
                                      }
                                      return null;
                                    },
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Gender',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      )),

                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        //gender field
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Type1",style: TextStyle(color: Colors.grey),),
                                  value: gendervalue,
                                  onChanged: (newval){
                                    setState(() {
                                      gendervalue=newval.toString();
                                      print(gendervalue);
                                    });
                                  },
                                  items:gender.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),



                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Date of Birth',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      )),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(text: 'Age',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey
                                      )),
                                      TextSpan(
                                        text: '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.45,

                                  child: TextFormField(
                                    //controller: cubit.dob,
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'DOB is required';
                                      }
                                      return null;
                                    },
                                    keyboardType: TextInputType.number,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    //controller: cubit.age,
                                    keyboardType: TextInputType.number,
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        return 'Age is required';
                                      }
                                      return null;
                                    },
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),





                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Blood Group',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("A+",style: TextStyle(color: Colors.grey),),
                                  value: bloodgroupvalue,
                                  onChanged: (newval){
                                    setState(() {
                                      bloodgroupvalue=newval.toString();
                                      print(bloodgroupvalue);
                                    });
                                  },
                                  items:bloodgroup.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),



                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Marital Status',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Patient Photo',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.45,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(Icons.cloud_download_outlined),
                                        Container(
                                          width: MediaQuery.of(context).size.width*0.34,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding: EdgeInsets.symmetric(vertical: 10)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),






                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Nationality',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Type!",style: TextStyle(color: Colors.grey),),
                                  value: nationalityvalue,
                                  onChanged: (newval){
                                    setState(() {
                                      nationalityvalue=newval.toString();
                                      print(nationalityvalue);
                                    });
                                  },
                                  items:nationality.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),



                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Religion',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Dietry',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Hindu",style: TextStyle(color: Colors.grey),),
                                  value: religionvalue,
                                  onChanged: (newval){
                                    setState(() {
                                      religionvalue=newval.toString();
                                      print(religionvalue);
                                    });
                                  },
                                  items:religion.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Dietry1",style: TextStyle(color: Colors.grey),),
                                  value: dietry[0],
                                  onChanged: (newval){
                                    setState(() {
                                      dietryvalue=newval.toString();
                                      print(dietryvalue);
                                    });
                                  },
                                  items:dietry.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),



                        SizedBox(
                          height: 10,
                        ),





                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Category',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Category1",style: TextStyle(color: Colors.grey),),
                                  value: category[0],
                                  onChanged: (newval){
                                    setState(() {
                                      categoryvalue=newval.toString();
                                      print(categoryvalue);
                                    });
                                  },
                                  items:category.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),




                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Remarks',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Any Known Allergies',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.45,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),



                        SizedBox(
                          height: 10,
                        ),





                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Address',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Aadhaar Card No',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),


                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.45,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 10,
                        ),



                        Divider(
                          height: 20,
                          indent: 20,
                          endIndent: 20,
                          thickness: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Symptoms type',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Symptoms Title',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width*0.45,
                                child:  DropdownButton(
                                  isExpanded: true,
                                  underline: Container(
                                  ),
                                  hint: Text("Type!",style: TextStyle(color: Colors.grey),),
                                  value: symptomsTypeValue,
                                  onChanged: (newval){
                                    setState(() {
                                      symptomsTypeValue=newval.toString();
                                      print(symptomsTypeValue);
                                    });
                                  },
                                  items:symptomsType.map((e){
                                    return DropdownMenuItem(child:Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(e,textAlign: TextAlign.center,style: TextStyle(fontSize: 15.0),
                                      ),
                                    ),value: e,);
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Container(
                                  width: MediaQuery.of(context).size.width*0.46,

                                  child: TextFormField(
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                        contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: const Color(0xff1a14d1),
                                          ),
                                          borderRadius:  BorderRadius.circular(10.0),
                                        ),
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            borderSide: new BorderSide(color: Colors.grey)
                                        ),
                                        fillColor: Colors.white70),
                                  )
                              ),
                            ),
                          ],
                        ),




                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Symptoms Description',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                border: InputBorder.none
                            ),
                          ),
                        ),



                        SizedBox(
                          height: 10,
                        ),

                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Note',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey
                                ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width*0.95,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey
                              )
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding:EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                                border: InputBorder.none
                            ),
                          ),
                        ),


                        SizedBox(
                          height: 30,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Save & Print Health Card",style: TextStyle(
                                fontSize: 12
                            ),),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty.all(Color(0xff1a14d1))
                              ),
                            ),
                            ElevatedButton(onPressed: (){}, child: Text("Save & Print",style: TextStyle(
                                fontSize: 12
                            ),),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty.all(Color(0xff1a14d1))
                              ),),
                            ElevatedButton(onPressed: (){
                              //if (addPatientFormKey.currentState!.validate()) {
                              //cubit.clickAddPatient();
                              //}
                            },
                              child: Text("Save",style: TextStyle(
                                  fontSize: 12
                              ),),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty.all(Color(0xff1a14d1))
                              ),),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),

                      ]
                  ),
                ),
              );
            },
          ),
        )

    );
    //)
  }
}
