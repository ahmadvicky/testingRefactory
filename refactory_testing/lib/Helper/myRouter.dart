/**
 * @ Author: ipul
 * @ Create Time: 2019-10-04 09:16:49
 * @ Modified by: ipul
 * @ Modified time: 2019-10-04 09:35:11
 */

import 'package:flutter/material.dart';

class myRouter {
  static Future<T> push<T>(BuildContext context, Widget page) {
    return Navigator.of(context).push<T>(
      new MaterialPageRoute(builder: (context) => page),
    );
  }

  static void pushNamed(BuildContext context, String page) {
    Navigator.of(context).pushNamed(page);
  }

  static void popAndPush(BuildContext context, Widget page) {
    pop(context);
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) => page),
    );
  }

  static void popsAndPush(BuildContext context, Widget page) {
    Navigator.of(context).popUntil((predicate) => predicate.isFirst);
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context) => page),
    );
  }

  static void replace(BuildContext context, Widget page) {
    Navigator.of(context).pushReplacement(
      new MaterialPageRoute(builder: (context) => page),
    );
  }

  static void makeFirst(BuildContext context, Widget page) {
    Navigator.of(context).popUntil((predicate) => predicate.isFirst);
    Navigator.of(context).pushReplacement(
      new MaterialPageRoute(builder: (context) => page),
    );
  }

  static void pop(BuildContext context) {
    if(Navigator.of(context).canPop()){
      Navigator.of(context).pop();
    }
  }

  static void pops(BuildContext context) {
    if(Navigator.of(context).canPop()){
      Navigator.of(context).popUntil((predicate) => predicate.isFirst);
    }
  }

  static void dismissAlert(context) {
    Navigator.of(context).pop();
  }

  static void navigate(BuildContext context, String page) {
    Navigator.of(context).popUntil((predicate) => predicate.isFirst);
    Navigator.of(context).pushReplacementNamed(page);
  }
}