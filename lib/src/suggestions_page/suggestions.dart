import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/plant_image.dart';
import 'package:plant_disease_detector/src/suggestions_page/components/text_property.dart';

class Suggestions extends StatelessWidget {
  const Suggestions({Key? key}) : super(key: key);

  static const routeName = '/suggestions';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMain,
        title: const Text('Results'),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Flexible(child: Center(child: PlantImage(size: size))),
                const Divider(thickness: 5.0, height: 10.0,),
                SizedBox(
                  height: size.height*0.5,
                  child: ListView(
                    children: const [
                      TextProperty(
                        title: 'Disease name',
                        value: 'Pepper Blight',
                      ),
                      TextProperty(
                        title: 'Possible causes',
                        value: 'Too much moisture',
                      ),
                      TextProperty(
                        title: 'Possible solution',
                        value: 'Regulate watering periods, use of fungicides',
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
