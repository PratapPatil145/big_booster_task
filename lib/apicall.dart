// import 'dart:async';
// import 'dart:developer';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:intl/intl.dart';

// class ApiCall {


//   Future<bool> check() async {
//     var connectivityResult = await (Connectivity().checkConnectivity());
//     if (connectivityResult == ConnectivityResult.mobile) {
//       return true;
//     } else if (connectivityResult == ConnectivityResult.wifi) {
//       return true;
//     }
//     return false;
//   }

//   showLoaderDialog(BuildContext context, {String text = 'Loading...'}) {
//     AlertDialog alert = AlertDialog(
//       content: new Row(
//         children: [
//           SizedBox(
//             width: 10,
//           ),
//           CircularProgressIndicator(
//             strokeWidth: 5,
//           ),
//           SizedBox(
//             width: 20,
//           ),
//           Container(
//               margin: EdgeInsets.only(left: 7),
//               child: Text(
//                 text,
//                 style: TextStyle(fontSize: 18, color: Colors.black),
//               )),
//           SizedBox(
//             width: 10,
//           ),
//         ],
//       ),
//     );
//     showDialog(
//       barrierDismissible: false,
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }

//   void showToast(String message, BuildContext context) {
//     Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_LONG,
//       gravity: ToastGravity.BOTTOM,
//     );
//   }

//   /*ProgressDialog progressDialog(String text, BuildContext context) {
//     ProgressDialog progressDialog = ProgressDialog(context,
//         type: ProgressDialogType.Normal, isDismissible: false);
//     return progressDialog;
//   }*/

//   String formatDate(String date, String format) {
//     log("Date -> $date   format -> $format");
//     String formattedDate = DateFormat(format).format(DateTime.parse(date));
//     //DateTime.parse(formattedString);
//     print(formattedDate);
//     return formattedDate;
//   }

//   bool validateEmail1(String value) {
//     RegExp regex = new RegExp(
//         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
//     return (!regex.hasMatch(value)) ? false : true;
//   }

//   bool validateEmail(String value) {
//     /*   Pattern pattern =
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';*/
//     RegExp regex = new RegExp(
//         r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
//     return (!regex.hasMatch(value)) ? false : true;
//   }

//   /*Map<String, dynamic> parseJwt(String token) {
//     final parts = token.split('.');
//     if (parts.length != 3) {
//       throw Exception('invalid token');
//     }

//     final payload = _decodeBase64(parts[1]);
//     final payloadMap = json.decode(payload);
//     if (payloadMap is! Map<String, dynamic>) {
//       throw Exception('invalid payload');
//     }

//     return payloadMap;
//   }

//   String _decodeBase64(String str) {
//     String output = str.replaceAll('-', '+').replaceAll('_', '/');

//     switch (output.length % 4) {
//       case 0:
//         break;
//       case 2:
//         output += '==';
//         break;
//       case 3:
//         output += '=';
//         break;
//       default:
//         throw Exception('Illegal base64url string!"');
//     }

//     return utf8.decode(base64Url.decode(output));
//   }*/
// }
