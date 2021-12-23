import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class TextProperty extends StatelessWidget {
  const TextProperty({Key? key, required this.title, required this.value})
      : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(
              color: kSecondary,
              fontFamily: 'SFBold',
              fontSize: 30.0,
            ),
          ),
          subtitle: Text(
            value,
            style: const TextStyle(
              color: kSecondary,
              fontFamily: 'SFRegular',
              fontSize: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
