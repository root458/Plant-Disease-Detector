import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  const PlantImage({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: size.width * 0.3,
      backgroundImage: const AssetImage('assets/images/pepper.jpg'),
    );
  }
}
