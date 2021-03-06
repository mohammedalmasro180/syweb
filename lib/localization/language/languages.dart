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
//----------------------
  String get  undefined
  ;
  String get  theEast
  ;
  String get  Salhia
  ;
  String get  Shuwaikh
  ;
  String get thekiss
  ;
  String get  aroundme;
  String get  Salmiya  ;
  String get
  MaidanHawally
  ;
  String get  thepeople  ;
  String get  AlFarwaniyah  ;
  String get Khaitan  ;
  String get thenoise  ;
  String get  Ahmadi  ;
  String get  thenoisee  ;
  String get  Fahaheel  ;
  String get  Jahra  ;
  String get  Taima  ;
  String get theeyes  ;
  String get  kivan  ;
  String get  Kindergarten  ;
  String get statement  ;
  String get  Salesestimate  ;
//-----------
  String get exchange;

  String get Activatespecial;
  String get deteform;
  String get deteto;
  String get class_definition;
  String get credit;
  String get averageexchange;

  String get accountentity;

  String get currentbalance;
  String get debit;
  String get Rate;
  String get Delegate_work_areas;
  String get Sales_estimate;
//String get credit;
  String get Invoice_date;
  String get the_currency;
  String get Quantity;
  String get invoice_number;

//Employee
// class public

  String get mystore ;
  String get currentquantity ;
  String get review ;
  String get upperlimit ;
  String get minimum ;
  String get options ;
  String get product ;
  String get productiondate ;
  String get expirationdate ;
  String get serialnumber ;
  String get forceoninput ;
  String get forceonoutput ;
  String get classstop  ;



  String get specialcost ;
  String get weightclass ;
  String get classforbranches ;
  String get partnumber ;
  String get measurement ;
  String get source ;
  String get type ;
  String get manufacturer ;
  String get color ;
  String get state ;
  String get size ;
  String get description ;
  String get chapter ;
  String get resource ;
  String get specification ;
  String get purchase_prices ;
  String get mored;

  String get class_definition_public;
//cost_center
  String get cost_center;
  String get revenue_estimation;
  String get Additions;
  String get  The_main_center;
  String get company_branch;
  String get Project_details;
  String get  project_value;
  String get Discounts;
  String get  Total;
  String get expense_estimate;
  String get 	Client	;

  String get 	Department	;
  String get 	Staff	;
  String get 	representative	;
  String get 	All	;
  String get 	From	;
  String get 	to_me	;
  String get 	Payment_method	;

  String get 	Sort_by	;
  String get 	show	;
  String get 	Customer_assembly	;
  String get 	Show_stage_bills	;
  String get 	Show_unstaged_bills	;
  String get 	Show_discounts_and_extras	;
  String get 	Group_by_delegate	;
  String get 	Show_unsold_customers	;
  String get 	Arrange_clients_by_groups	;
  String get 	Customer_analysis_according_to_the_largest_net	;
  String get 	Show_paid	;
  String get 	Show_the_rest	;
  String get 	Show_the_clients_goal	;
  String get 	sales_returns	;
  String get 	Report_sources	;
  String get 	sales	;

//
  String get 	customer_information	;
  String get 	account_name	;
  //String get 	company_branch	;
  String get 	account_type	;
  String get 	Normal	;
  String get 	Account_suspension	;
  String get 	Not_allowed_to_sell_when_the_limit_is_exceeded	;
  String get 	bordermain	;
  String get 	Customer_receivables	;
  String get 	borderfinal	;
  String get 	balance_sheet	;
  String get 	Matching_date	;
  //String get 	Matching_date	;
  String get 	Account_settings	;
  //String get 	Client	;
  String get 	Box	;
  String get 	Expenses	;
  String get 	Supplier	;
  String get 	Excluded_credit	;
  String get 	item	;
  String get 	income	;
  String get 	Warning	;
  String get 	Debit	;
  String get 	Creditor	;
  String get 	without	;
  String get 	Estimated_value	;

  String get 	Syrian_Pound	;
  String get 	Exchange	;

  String get 	average_exchange	;
  String get 	account_side	;
  String get 	both_of_them	;
  String get 	current_balance	;

//Account
  String get 	Civil_No	;
  String get 	Administrator	;
  String get 	Telephone	;
  String get 	fax	;
  String get 	Mobile	;
  String get 	sent_to	;
  String get 	place_of_sending	;
String get 	email	;
  String get 	Website	;
  String get 	Address	;
  String get 	Governorate	;
  //String get 	undefined	;
  String get 	Region	;
  String get 	widget	;
  String get 	home	;
  String get 	Postal_code	;
  String get 	street	;
  String get 	Avenue	;
  String get 	turn_number	;
  String get 	mail_box	;
  String get 	customer_present	;
  String get 	selling_price	;
  String get 	discount_percentage	;
  String get 	Distribution_ratio	;
  String get 	Branches__Locations	;
  String get 	Payment_Terms	;
  String get 	customer_goal	;
  String get 	customer_rating	;
  //String get 	without	;
  String get 	Target	;
  String get 	the_value	;
  String get 	number_of_invoices	;
  String get 	Purchase_value	;
  String get 	design_value	;
  String get Contractvalue;
  String get 	delivery_date	;
  String get 	Contract_expiry_date	;
  //String get 	Distribution_ratio	;
  String get Street;
  String get 	Notes	;

  String get 	Free_quantity	;
  String get 	Activate_the_free_offer	;
  String get 	customerr_rating	;
  String get Nationality;
  String get   Clieent;
  String get 	sales_representative	;
  String get 	work_areas;
  String get 	Item_Quantities	;

  //String get  Project_details;
  String get 	Account	;


  String get Delegate;
}
