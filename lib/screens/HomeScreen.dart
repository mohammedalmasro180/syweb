import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/theme/color.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: myappbar(context),
      drawer: drawer(),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.amberAccent,
                  child: InkWell(
                    onTap: (){
                  return   showAlertDialog(context);


                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Align(

                                alignment: FractionalOffset.centerLeft,

                                child: Icon(Icons.ac_unit_sharp,size: 30,color: Colors.black,)),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Align(

                                alignment: FractionalOffset.centerRight,

                                child: Text("Group",style: TextStyle(fontSize: 14),)),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
  showAlertDialog(BuildContext context) {

    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Cancel"),
      onPressed:  () {},
    );
    Widget continueButton = FlatButton(
      child: Text("Continue"),
      onPressed:  () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Groups"),
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

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(" Add Group",style: TextStyle(color:Colors.white),),

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
                      Text(" Edit Group",style: TextStyle(color:Colors.white),),

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
                      Text(" Delete Group",style: TextStyle(color:Colors.white),),

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
