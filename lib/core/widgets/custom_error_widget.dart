import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorMessage extends StatelessWidget {
  final String errMessage;
  const CustomErrorMessage({
    Key? key,
    required this.errMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(errMessage, style: Styles.textStyle18);
  }
}
