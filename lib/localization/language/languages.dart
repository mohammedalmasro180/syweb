import 'package:flutter/material.dart';

abstract class Languages {

  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get appName;

  String get labelWelcome;

  String get labelInfo;

  String get labelSelectLanguage;
  String get add;
  String get edithome;
  String get delhome;
  String get Employeeaddreslabel;
  String get Employeetxtcode;
  String get Employeetxtmaincode;
  String get Employeetxtname;
  String get Employeelbldepatment;
  String get EmployeedounNew;
  String get Employeedwongender;
  String get Enter;
  String get addres;

  String get Employeelblgender;
  String get Employeetxtwork;
  String get Employeesolary;
  String get Employeecharge;
  String get Employeenumber;
  String get Employeeaingle;
  String get EmployeeGovernorate;
  String get social;
  String get EmployeeRegion;
  String get EmployeeBranch;
  String get Employee;
  String get Employeelblsetting;

  String get Employeeacount;
  String get Employestore;
  String get Employehome;

  String get classhome;
  String get pricehome;
  String get storehome;
  String get grouphome;

//Employee
}
