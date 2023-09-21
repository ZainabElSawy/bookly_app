import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookly_app/core/utils/styles.dart';

// ignore: must_be_immutable
class BookRating extends StatelessWidget {
  MainAxisAlignment mainAxisAlignment;
  BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(245)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
