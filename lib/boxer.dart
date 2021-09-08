library boxer;

import 'dart:developer';

import 'package:intl/intl.dart';

/// [Boxer] is the main class which provides APIs for logging
class Boxer {
  /// [punch] method accepts a [string] & an optional [label] & logs out the message

  static punch(dynamic message, {String? label}) {
    String s = StackTrace.current.toString();
    var list = s.split("\n");
    var sourcePath = list[1].substring(list[1].indexOf("package"));
    DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd | hh:mm:ss');
    final String dt = formatter.format(now);
    label = label ??
        sourcePath.substring(
            sourcePath.indexOf("/") + 1, sourcePath.lastIndexOf(":"));
    log("$dt $sourcePath", name: label);
    log(message.toString(), name: label);
  }
}
