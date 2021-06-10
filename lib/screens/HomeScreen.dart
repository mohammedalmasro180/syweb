import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/store.dart';

import 'package:theone/theme/color.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context),
      drawer: drawer(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)

                      .size
                      .width,
                  height: 100,
                  color: Colors.amberAccent,
                  child: InkWell(
                    onTap: () {
                      showAlertDialog(context,"Groups","Add Group","Edit Group","Delete Group",addgroup(),addgroup());
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Align(

                                alignment: FractionalOffset.centerLeft,

                                child: Icon(Icons.ac_unit_sharp, size: 30,
                                  color: Colors.black,)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Align(

                                alignment: FractionalOffset.centerRight,

                                child: Text(
                                  "Group", style: TextStyle(fontSize: 14),)),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: 100,
                  color: Colors.amberAccent,
                  child: InkWell(
                    onTap: () {

                    },
                    child: InkWell(
                      onTap: () {
                        showAlertDialog(context,"Stores", "Add Store", "Edit Store",
                            "Delete Store",store(),store());
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerLeft,

                                  child: Icon(Icons.ac_unit_sharp, size: 30,
                                    color: Colors.black,)),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Align(

                                  alignment: FractionalOffset.centerRight,

                                  child: Text(
                                    "Stores", style: TextStyle(fontSize: 14),)),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }


  showAlertDialog(BuildContext context,String address,String btn1,String btn2,String btn3,
      StatefulWidget statefulWidget1,StatefulWidget statefulWidget2) {

    AlertDialog alert = AlertDialog(
        title: Text(address),
        content: Container(
          width: 350,
          height: 250,
          alignment: FractionalOffset.center,
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => statefulWidget1));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(btn1,style: TextStyle(color:Colors.white),),

                      ],
                    ),

                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => statefulWidget2));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(btn2,style: TextStyle(color:Colors.white),),

                      ],
                    ),

                  )
              ),

              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(btn3,style: TextStyle(color:Colors.white),),

                      ],
                    ),

                  )
              ),






            ],

          ),
        )
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );

  }
}
addstore(BuildContext context){
return   Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => store()));
}