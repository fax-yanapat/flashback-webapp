import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/constant/style.dart';
import 'progress_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                ProgressBar()
              ],
            ),
          ),
        )
      ],
    );
  }
}