import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/screens/Employee.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/screens/class_definition.dart';
import 'package:theone/screens/extra_prices.dart';
import 'package:theone/screens/store.dart';

import 'package:theone/theme/color.dart';
class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    String codee;
    getLocale(codee);

    return Scaffold(
      appBar: myappbar(context,"The one"),
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
                  color: sh,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>addgroup()));

//                        showAlertDialog(context,Languages.of(context).grouphome,addgroup(),addgroup());
                      //                     showMyDialog(context,Languages.of(context).grouphome,addgroup(),addgroup(),Languages.of(context).delhome,Languages.of(context).add,Languages.of(context).edithome);

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(Icons.group, size: 30,
                            color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            Languages.of(context).grouphome, style: TextStyle(fontSize: 14,color: Colors.black),
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
                  color: sh,
                  child: InkWell(
                    onTap: () {

                    },
                    child: InkWell(
                      onTap: () {
                        //  showMyDialog(context,Languages.of(context).storehome,store(),store(),Languages.of(context).delhome,Languages.of(context).add,Languages.of(context).edithome);
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) =>store()));

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Icon(Icons.store, size: 30,
                              color: Colors.black,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Text(
                              Languages.of(context).storehome, style: TextStyle(fontSize: 14,color: Colors.black),),
                          ),

                        ],
                      ),
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
                  color: sh,
                  child: InkWell(
                    onTap: () {
                      //showMyDialog(context,Languages.of(context).pricehome,extra_prices(),extra_prices(),Languages.of(context).delhome,Languages.of(context).add,Languages.of(context).edithome);
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>extra_prices()));

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(Icons.attach_money, size: 30,
                            color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            Languages.of(context).pricehome, style: TextStyle(fontSize: 14,color: Colors.black),),
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
                  color: sh,
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>class_definition()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(Icons.class_, size: 30,
                            color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Align(

                              alignment: FractionalOffset.centerLeft,

                              child: Text(
                                Languages.of(context).classhome, style: TextStyle(fontSize: 14,color: Colors.black),)),
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
                  color: sh,
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>Employee()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Icon(Icons.person, size: 30,
                            color: Colors.black,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Align(

                              alignment: FractionalOffset.centerLeft,

                              child: Text(
                                Languages.of(context).Employehome, style: TextStyle(fontSize: 14,color: Colors.black),)),
                        ),

                      ],
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

  showMyDialog(BuildContext context,String address,
      StatefulWidget statefulWidget1,StatefulWidget statefulWidget2,String  del,String add,String edit)  {

    return showDialog(
        context: context,
        barrierDismissible: false, //this means the user must tap a button to exit the Alert Dialog
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(address),
            content: SingleChildScrollView(
              child:Container(
                width: 350,
                height: 250,
                alignment: FractionalOffset.center,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width-200,
                          child: RaisedButton (
                            color: sh,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                            onPressed:(){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => statefulWidget1));

                              changeLanguage(context, 'ar');
                              //Navigator.push(context);
                              //Navigator.push(context, true); // passing false

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(add+" "+address,style: TextStyle(color:Colors.black),),


                              ],
                            ),

                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width-200,
                          child: RaisedButton (

                            color: sh,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                            onPressed:(){
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => statefulWidget2));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(edit+" "+address,style: TextStyle(color:Colors.black),),

                              ],
                            ),

                          ),
                        )
                    ),


                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Container(
                          height: 65,
                          width: MediaQuery.of(context).size.width-200,
                          child: RaisedButton (

                            color: sh,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                            onPressed:(){
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(del+" "+address,style: TextStyle(color:Colors.black),),

                              ],
                            ),

                          ),
                        )
                    ),






                  ],

                ),
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        }
    );
  }
  Future<void> showAlertDialog(BuildContext context,String address,
      StatefulWidget statefulWidget1,StatefulWidget statefulWidget2)  async {

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
                child:  Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => statefulWidget1));
                      //Navigator.push(context);
                      //Navigator.push(context, true); // passing false

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).add+" "+address,style: TextStyle(color:Colors.black),),


                      ],
                    ),

                  ),
                )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => statefulWidget2));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).edithome+" "+address,style: TextStyle(color:Colors.black),),

                      ],
                    ),

                  ),
                )
            ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child:  Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton (

                    color: sh,
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                    onPressed:(){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(Languages.of(context).delhome+" "+address,style: TextStyle(color:Colors.black),),

                      ],
                    ),

                  ),
                )
            ),






          ],

        ),
      ),

      actions: <Widget>[
        FlatButton(
          child: Text('Approve'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],

    );

    // show the dialog
    return showDialog<void>(
      context: context,
      barrierDismissible: false, //this means the user must tap a button to exit the Alert Dialog
      builder: (BuildContext context) {
        return alert;
      },
    );

  }

Future<Locale> getLocale(String code) async {
SharedPreferences _prefs = await SharedPreferences.getInstance();
String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
code=languageCode;
print(languageCode);
}


}