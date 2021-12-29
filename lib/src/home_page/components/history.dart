import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';

class HistorySection extends SliverFixedExtentList {
  HistorySection(Size size, {Key? key})
      : super(
          key: key,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 12.0, 0, 0),
                child: SizedBox(
                  width: size.width,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    addAutomaticKeepAlives: false,
                    itemExtent: size.width * 0.9,
                    scrollDirection: Axis.horizontal,
                    children: [
                      _returnHistoryContainer(),
                      _returnHistoryContainer(),
                      _returnHistoryContainer(),
                    ],
                  ),
                ),
              );
            },
            childCount: 1,
          ),
          itemExtent: size.height * 0.3,
        );
}

Widget _returnHistoryContainer() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12.0, 0, 12.0, 0),
    child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/images/pepper.jpg'),
                fit: BoxFit.cover),
            boxShadow: const [
              BoxShadow(
                color: kAccent,
                spreadRadius: 0.5,
                blurRadius: 5.0,
              ),
            ],
            color: kSecondary,
            borderRadius: BorderRadius.circular(12.0)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Disease: Pepper Blight',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 15.0,
                    fontFamily: 'SFBold',
                  )),
              Text('Date: 12/07/2021',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 15.0,
                    fontFamily: 'SFBold',
                  )),
            ],
          ),
        )),
  );
}

Widget _returnNothingToShow() {
  return Container(
      decoration: BoxDecoration(
          color: kSecondary, borderRadius: BorderRadius.circular(12.0)),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: Center(
            child: Text(
          'Nothing to show',
          style: TextStyle(color: kWhite),
        )),
      ));
}
