import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/screens/SGINUP.dart';
import 'package:theone/theme/color.dart';
class LoginScreen extends StatefulWidget {


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0),


                  child: Image.asset("assets/logo.jpg",width: 300,height: 300,),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Welcome To Our Application",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(

                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: "Email",


                        fillColor: Colors.white,


    icon: Icon(Icons.perm_contact_cal,color:sh,),
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
)),
                  ),


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
                                Text("SGIN IN",style: TextStyle(color:Colors.white),),
                                Icon(Icons.arrow_forward,color: Colors.white,
                                )
                              ],
                            ),

                          ),
                        ),
                      ),

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
                                Text("SKIP",style: TextStyle(color:Colors.white),),
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
                  padding: const EdgeInsets.all(50.0),
                  child: Row(
                    children: [
                      Text("Don`t have an account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                      InkWell(

                      onTap: (){
Navigator.push(
context, MaterialPageRoute(builder: (context) =>Signup()));

},


child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("SGIN UP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: primary),),
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
