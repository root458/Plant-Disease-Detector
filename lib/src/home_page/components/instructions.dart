import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class InstructionsSection extends SliverFixedExtentList {
  InstructionsSection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12, 14.0, 15, 12.0),
                child: Container(
                  height: size.height * 0.27,
                  decoration: BoxDecoration(
                    color: kSecondary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
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
                              'Take/Select a photo of an affected plant by clicking the camera button below',
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
                              'Click on scan on the next page to get a suggestion',
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
