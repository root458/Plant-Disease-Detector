import 'package:flutter/material.dart';
import 'package:plant_disease_detector/constants/constants.dart';
import 'package:plant_disease_detector/src/home_page/components/greeting.dart';
import 'package:plant_disease_detector/src/home_page/components/history.dart';
import 'package:plant_disease_detector/src/home_page/components/instructions.dart';
import 'package:plant_disease_detector/src/home_page/components/titlesection.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondary,
        child: const Icon(
          Icons.camera_alt,
          color: kWhite,
        ),
        onPressed: () {}
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: CustomScrollView(
          slivers: [
            GreetingSection(size.height*0.2),
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
