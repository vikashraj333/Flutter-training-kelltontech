import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/speaker.dart';

class SpeakerDetails extends StatelessWidget {
  static const routeName = '/speakerDetails';
  const SpeakerDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Speaker speaker =
        ModalRoute.of(context)!.settings.arguments as Speaker;
    return Scaffold(
        appBar: AppBar(
          title: Text(speaker.speakerName + ' details'),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 20.0,
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Center(child: Image(image: NetworkImage(speaker.imageUrl))),
                    Center(
                      child: Text(
                        speaker.speakerName,
                        style: const TextStyle(fontSize: 30.0),
                      ),
                    ),
                    Text(
                      speaker.shortDescription,
                      style: const TextStyle(fontSize: 30.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
