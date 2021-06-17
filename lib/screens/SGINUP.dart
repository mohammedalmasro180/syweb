import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/dropdwne.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/screens/Login.dart';
import 'package:theone/theme/color.dart';
class Signup extends StatefulWidget {


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: Languages.of(context).sginupfull,


                      fillColor: Colors.white,



                      icon: Icon(Icons.perm_contact_cal,size: 25,color:sh,),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: Languages.of(context).loginemail,


                        fillColor: Colors.white,


                    icon: Icon(Icons.email,size: 25,color:sh,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                        labelText: Languages.of(context).loginpass,

                        fillColor: Colors.white,


                    icon: Icon(Icons.lock,color:sh,),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(


                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: Languages.of(context).sginupphonn,



                        fillColor: Colors.white,


                    icon: Icon(Icons.phone,size: 25,color:sh,),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: missing_required_param
                  child:Row(
                    children: [
                      Expanded(child: down(context, controller, Languages.of(context).sginupcontry)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: Languages.of(context).sginupcode,


                        fillColor: Colors.white,


                    icon: Icon(Icons.code,size: 15,color:sh,),
                    ),
                  ),
                )
                ,


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: RaisedButton(
                            color: rowto,
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
                            onPressed:() {
                            },

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(Languages.of(context).sginupbtn,style: TextStyle(color:Colors.white),),
                                Icon(Icons.arrow_forward,color: Colors.white,
                                )
                              ],

                            ),

                          ),
                        ),
                      ),

                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Text(Languages.of(context).sginuplbl,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      InkWell(

                        onTap: (){
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) =>LoginScreen()));

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(Languages.of(context).sginupbtn,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: primary),),
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
