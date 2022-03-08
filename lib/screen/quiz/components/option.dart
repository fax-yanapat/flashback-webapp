import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/constant/style.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kcMediumGreyColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Test",
            style: TextStyle(
                color: kcMediumGreyColor, fontSize: 16),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: kcMediumGreyColor)),
          ),
        ],
      ),
    );
  }
}
