import 'package:flutter/material.dart';
import 'package:flutter_application_1/KnowYourStateApp/states.dart';
import 'package:flutter_application_1/utiles/constants.dart';

class StatesDetails extends StatelessWidget {
  static const routeName = '/statesDetails';
  const StatesDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final States states = ModalRoute.of(context)!.settings.arguments as States;
    return Scaffold(
        appBar: AppBar(
          title: Text(states.stateName + ' details'),
          backgroundColor: kCardInActiveBackground,
        ),
        body: ListView(
          children: [
            Card(
              elevation: 20.0,
              color: kBackgroundColor,
              child: Column(
                children: [
                  Hero(
                      tag: states.capitalName,
                      child: Center(
                          child: Image(image: NetworkImage(states.imageUrl)))),
                  Center(
                    child: Text(
                      'State : ${states.stateName}',
                      style: klabelLargeTextStyle,
                    ),
                  ),
                  Text(
                    'Capital : ${states.capitalName}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'District : ${states.district}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Date of establishment : ${states.formation}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Chief Minister : ${states.cm}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Governer : ${states.governer}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Largest city : ${states.largestCity}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Language : ${states.language}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Population : ${states.population}',
                    style: klabelTextStyle,
                  ),
                  Text(
                    'Rank in population : ${states.rankPopulation}th',
                    style: klabelTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
