import 'package:flutter/material.dart';
import 'package:theone/Widget/Appbar.dart';
import 'package:theone/Widget/checkbox.dart';
import 'package:theone/Widget/drawer.dart';
import 'package:theone/Widget/txt.dart';
import 'package:theone/localization/language/languages.dart';
class work_areas extends StatefulWidget {
  const work_areas({Key key}) : super(key: key);

  @override
  _work_areasState createState() => _work_areasState();
}

class _work_areasState extends State<work_areas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myappbar(context,Languages.of(context).Delegate_work_areas),
      drawer: drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Delegate_work_areas),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).undefined,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).theEast,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Salhia,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Shuwaikh,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).thekiss,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).aroundme,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).Salmiya,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).MaidanHawally,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title:Languages.of(context).thepeople,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).AlFarwaniyah,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Khaitan,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).thenoisee,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).thenoise,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).thenoise,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Fahaheel,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Jahra,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Taima,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).theeyes,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).kivan,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: Languages.of(context).Kindergarten,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mycheckbox(title: '????????',),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: txt(context, Languages.of(context).Sales_estimate),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: txt(context,Languages.of(context).deteform)),
                Expanded(child: txt(context, Languages.of(context).deteto)),
                Expanded(child: txt(context, Languages.of(context).deteto)),
                Expanded(child: txt(context,Languages.of(context).Rate)),

              ],
            ),
          )
        ],
      ),
    );
  }
}
