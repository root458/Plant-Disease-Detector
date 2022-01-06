import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class InstructionsSection extends SliverFixedExtentList {
  InstructionsSection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    (0.061 * size.height * 0.26),
                    (0.071 * size.height * 0.26),
                    (0.076 * size.height * 0.26),
                    (0.061 * size.height * 0.26)),
                child: Container(
                  height: size.height * 0.26,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius:
                        BorderRadius.circular((0.061 * size.height * 0.26)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB((0.025 * size.height * 0.26),
                        0, 0, (0.025 * size.height * 0.26)),
                    child: ListView(
                      children: const [
                        ListTile(
                            leading: CircleAvatar(
                              backgroundColor: kMain,
                              child: Text(
                                '1',
                                style: TextStyle(color: kWhite),
                              ),
                            ),
                            title: Text(
                              'Take/Select a photo of an affected plant by tapping the camera button below',
                              style: TextStyle(color: kWhite),
                            )),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: kMain,
                            child: Text(
                              '2',
                              style: TextStyle(color: kWhite),
                            ),
                          ),
                          title: Text(
                              'Give it a short while before you can get a suggestion of the disease',
                              style: TextStyle(color: kWhite)),
                        ),
                        ListTile(
                          title: Text(''),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: size.height * 0.26,
        );
}
