import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/dropdwne.dart';
import 'package:theone/screens/Login.dart';
import 'package:theone/theme/color.dart';
class Signup extends StatefulWidget {


  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                      labelText: "Full Name",


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
                        labelText: "Email",


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

                        labelText: "Password ",

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
                        labelText: "Phone",



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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Country",style: TextStyle(fontWeight: FontWeight.w500),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Dropdwon(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Refer code",


                        fillColor: Colors.white,


                    icon: Icon(Icons.code,size: 15,color:sh,),
                    ),
                  ),
                )
                ,

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Forget your Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ),

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
                                Text("SGIN UP",style: TextStyle(color:Colors.white),),
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
                      Text("You already have  account",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      InkWell(

                        onTap: (){
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>LoginScreen()));

                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("SGIN IN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: primary),),
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
