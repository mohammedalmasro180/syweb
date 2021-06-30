import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/botrombar.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/localization/locale_constant.dart';
import 'package:theone/theme/color.dart';
class Employee extends StatefulWidget {


  @override
  _EmployeeState createState() => _EmployeeState();
}
TextEditingController controller;

class _EmployeeState extends State<Employee> {
  @override
  Widget build(BuildContext context) {

    String codee;
    getLocale(codee);

    String address= Languages.of(context).Employee;
    return Scaffold(

      appBar: myappbar(context,Languages.of(context).Employehome),
      drawer: drawer(),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: 700,

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


        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(address.toString() ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller,Languages.of(context).Employeetxtcode),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeetxtmaincode),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:down(context, controller, Languages.of(context).religion),
            ),
            //rep
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeetxtname),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(Languages.of(context).Employeelbldepatment,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),
            Padding(
                padding: const EdgeInsets.all(1.0),
                child: down(context, controller, Languages.of(context).EmployeedounNew)),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Text(Languages.of(context).Employeelblgender,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),
            Padding(
                padding: const EdgeInsets.all(1.0),
                child: down(context, controller, Languages.of(context).Employeedwongender)),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeetxtwork),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeesolary),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeecharge),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeenumber),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Languages.of(context).social,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: down(context, controller, Languages.of(context).Employeeaingle)),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Languages.of(context).Employee,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: down(context, controller, Languages.of(context).EmployeeGovernorate),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: down(context, controller, Languages.of(context).EmployeeRegion),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: down(context, controller, Languages.of(context).EmployeeBranch),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Languages.of(context).Employeelblsetting,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employeeacount),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: textfield(context, controller, Languages.of(context).Employestore),
            ),


          ],
        ),
      ),
    );
  }

  Future<Locale> getLocale(String code) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    String languageCode = _prefs.getString(prefSelectedLanguageCode) ?? "en";
    code=languageCode;
    print(languageCode);
  }


}