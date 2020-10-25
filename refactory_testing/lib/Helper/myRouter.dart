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
}