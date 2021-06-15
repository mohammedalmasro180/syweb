import 'package:flutter/material.dart';
import 'package:theone/theme/color.dart';

Widget BottomBar(context){
  return   BottomNavigationBar(
    backgroundColor: sh,
    showUnselectedLabels: true,
    items: const <BottomNavigationBarItem>[
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
          icon: Icon(Icons.close,color: Colors.white,),
          title: Text('اغلاق'),
          backgroundColor: Colors.red
      ),
    ],


  );
}
