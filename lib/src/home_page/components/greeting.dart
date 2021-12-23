import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class GreetingSection extends SliverFixedExtentList {
  GreetingSection(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: kSecondary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 0, 0, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Plant Disease Detector',
                          style: TextStyle(
                              fontFamily: 'SFBold',
                              fontSize: 30.0,
                              color: kWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}
