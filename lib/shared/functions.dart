import 'package:auto_cars/shared/constant.dart';
import 'package:auto_cars/shared/labels.dart';
import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateToWithReplacement(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );

String setLabel(key) {
  return Labels.labels[key][lang]!;
}
