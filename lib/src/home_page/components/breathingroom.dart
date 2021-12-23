import 'package:flutter/material.dart';

class BreathingRoom extends SliverFixedExtentList {
  BreathingRoom(double height, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Container();
            },
            childCount: 1,
          ),
          itemExtent: height,
        );
}




