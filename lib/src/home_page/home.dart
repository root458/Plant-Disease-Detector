import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/services/classify.dart';
import 'package:plant_disease_detector/src/home_page/components/greeting.dart';
import 'package:plant_disease_detector/src/home_page/components/history.dart';
import 'package:plant_disease_detector/src/home_page/components/instructions.dart';
import 'package:plant_disease_detector/src/home_page/components/titlesection.dart';
import 'package:plant_disease_detector/src/suggestions_page/suggestions.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Classifier classifier = Classifier();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SpeedDial(
        icon: Icons.camera_alt,
        spacing: 10,
        children: [
          SpeedDialChild(
            child: const FaIcon(
              FontAwesomeIcons.file,
              color: kWhite,
            ),
            label: "Choose image",
            backgroundColor: kMain,
            onTap: () {
              classifier.pickImage(ImageSource.gallery);
              Navigator.restorablePushNamed(
                context,
                Suggestions.routeName,
              );
            },
          ),
          SpeedDialChild(
            child: const FaIcon(
              FontAwesomeIcons.camera,
              color: kWhite,
            ),
            label: "Take photo",
            backgroundColor: kMain,
            onTap: () {
              classifier.pickImage(ImageSource.camera);
              Navigator.restorablePushNamed(
                context,
                Suggestions.routeName,
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover),
        ),
        child: CustomScrollView(
          slivers: [
            GreetingSection(size.height * 0.2),
            TitleSection('Instructions', 50.0),
            InstructionsSection(size),
            TitleSection('Your History', 50.0),
            HistorySection(size)
          ],
        ),
      ),
    );
  }
}
