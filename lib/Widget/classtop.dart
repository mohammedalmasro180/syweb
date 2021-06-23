import 'package:flutter/material.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/dwon.dart';
import 'package:theone/Widget/textfeildicon.dart';
import 'package:theone/Widget/textfelid.dart';
import 'package:theone/localization/language/languages.dart';
import 'package:theone/screens/Employee.dart';
class classtop extends StatelessWidget {
  const classtop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


    Padding(
    padding: const EdgeInsets.all(1.0),
    child: textfieldicon(context, controller, Languages.of(context).grouphome,  Icon(Icons.search)),
    ),
    Padding(
    padding: const EdgeInsets.all(1.0),
    child: textfield(context, controller,  Languages.of(context).extracode),
    ),
    Padding(
    padding: const EdgeInsets.all(1.0),
    child: textfield(context, controller,  Languages.of(context).groupnameto),
    ),
    Padding(
    padding: const EdgeInsets.all(1.0),
    child: textfield(context, controller,  Languages.of(context).classhome),

    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(1.0),
    child:Text(Languages.of(context).extradete,style: TextStyle(fontSize: 15,color: Colors.grey.shade700),)
    ),
    ),

    Expanded(
    child: Padding(
    padding: const EdgeInsets.all(1.0),
    child:down(
    context,controller,"06/02/21",)
    ),
    ),
    Expanded(
    child: SizedBox(width: 50,)
    ),

    ],
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: Languages.of(context).extrapublesh,),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Mycheckbox(title: Languages.of(context).extraclass,),
    ),
      ],
    );
  }
}
