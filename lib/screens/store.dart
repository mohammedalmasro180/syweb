import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/screens/addgroup.dart';
import 'package:theone/theme/color.dart';
class store extends StatefulWidget {


  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: drawer(),

          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: sh,
            showUnselectedLabels: true,            items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.open_in_new,color: Colors.white,),
                title: Text('جديد'),
                backgroundColor: sh
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add,color: Colors.white,),
                title: Text('اضافة'),
                backgroundColor: sh
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit,color: Colors.white,),
                title: Text('تعديل'),
                backgroundColor: sh
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,color: Colors.white,),
                title: Text('مجموعات'),backgroundColor: sh
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.white,),
                title: Text('حسابات'),
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: Colors.white,),
                title: Text('اغلاق'),
                backgroundColor: Colors.red
            ),
          ],


          ),

          appBar: myappbar(context),
          body: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Center(
                        child: Container(

                          padding: EdgeInsets.all(30),
                          height: MediaQuery.of(context).size.height-200,
                          width: 700,

                          child:Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Center(
                              child: Form(
                                //      key: formstate,
                                  child: Center(
                                    child: ListView(

                                      children: [
                                        Row(
                                          children: [
                                            Expanded(child: textfield(context,code, "الرمز")),

                                            Expanded(child: Checkbox(value: false, onChanged: null,)
                                            ),
                                            Expanded(child: Text("موقوف",style:  TextStyle(fontSize: 15),)
                                            ),



                                          ],
                                        ),

                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الاسم")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الاسم اللاتيني")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "اختصار الاسم")
                                        ),

                                        SizedBox(height: 10,),

                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "المكان")
                                        ),
                                        SizedBox(height: 10,),

                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "التليفون")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الفاكس")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "حساب المدين")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "حساب الدائن")
                                        ),
                                        SizedBox(height: 10,),
                                        Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child:textfield(context,code, "الشركة")
                                        ),




                                      ],
                                    ),
                                  )),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 4,
                                    spreadRadius: 0.1
                                )
                              ]

                          ),

                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          )
      ),
    );
  }

}
