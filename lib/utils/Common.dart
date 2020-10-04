import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:students_catlog/utils/colors.dart';

class Common
{
  static Future<bool> displayToast(String message) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 2,
        backgroundColor: primaryColor,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  static SnackBar displaySnackBar(String message,
      {String actionMessage, VoidCallback onClick}) {
    return SnackBar(
      content: Text(
        message,
        style: TextStyle(color: Colors.white, fontSize: 14.0),
      ),
      action: (actionMessage != null)
          ? SnackBarAction(
        textColor: Colors.white,
        label: actionMessage,
        onPressed: () {
          return onClick();
        },
      )
          : null,
      duration: Duration(seconds: 2),
      backgroundColor: primaryColor,
    );
  }

  static void showPopup(BuildContext context, String message) {
    var alertDialog = AlertDialog(
      title: Text("Student App"),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

}
