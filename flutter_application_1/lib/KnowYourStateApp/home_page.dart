import 'package:flutter/material.dart';
import 'package:flutter_application_1/KnowYourStateApp/states_details.dart';
import 'package:flutter_application_1/KnowYourStateApp/states_service.dart';
import 'package:flutter_application_1/utiles/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var states = StatesService().getStates();
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyH2IOsK-ipCA1ZRsGh55owW7fh9i5wwgZg&usqp=CAU')),
        title: const Text('Know Your State App'),
        backgroundColor: kCardInActiveBackground,
      ),
      body: Container(
        color: kBackgroundColor,
        child: ListView.builder(
            itemCount: states.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 20.0,
                  child: ListTile(
                    title: Text(states[index].stateName),
                    subtitle: Text(states[index].capitalName),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      var state = states[index];
                      Navigator.pushNamed(context, StatesDetails.routeName,
                          arguments: state);
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
}
