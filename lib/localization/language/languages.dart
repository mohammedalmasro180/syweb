import 'package:flutter/material.dart';
import 'package:theone/screens/store.dart';

abstract class Languages {

  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages);
  }

  String get appName;
  String get loginaddres;
  String get loginemail;
  String get loginpass;
  String get loginbtn;
  String get loginskip;
  String get loginlbl;
  String get loginurl;
  String get sginupfull;
  String get sginupphonn;

  String get groupcode;
  String get groupname;
  String get groupnameto;
  String get groupmaingroup;
  String get groupnots;
  String get groupstopgroup;
  String get groupdisable;
  String get des;
  String get extracode;
  String get extradete;
  String get extradetee;
  String get extrapublesh;
  String get extraun;
  String get extraprice;
  String get extraclass;
  String get extraunit;




  String get storestoped;
  String get storeshortname;
  String get storeplace;
  String get storetel;
  String get storefax;
  String get storeact1;
  String get storeact2;
  String get storeactcompoy;




  String get sginupcode;
  String get sginupcontry;
  String get sginuplbl;
  String get sginupbtn;
  String get sginupurl;



  String get price;

  String get qn;

  String get bottomadd;
  String get bottomnew;
  String get bottomedit;
  String get bottomac;
  String get bottomclose;


  String get labelWelcome;

  String get labelInfo;
  String get test;
  String get labelSelectLanguage;
  String get add;
  String get religion;
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



  String get accountname;
  String get companybranch;
  String get accounttype;

  String get normal;

  String get accountsuspended;

  // String get Not allowed to sell when the limit is exceeded;
  // String get bound/ main;
  // String get customer receivables;
  // String get String;
  String get balancesheet;
  String get matchdate;
  //String get set account;



  String get box;

  String get expense;

  String get supplier;

  String get approvalExcluded;

  String get clause;

  String get revenue;

  String get estimatedvalue;
  String get currency;



  String get exchange;


  String get credit;
  String get averageexchange;

  String get accountentity;

  String get currentbalance;
  String get debit;

//String get credit;

//Employee
}
