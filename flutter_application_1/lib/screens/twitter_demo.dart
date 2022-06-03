import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(FontAwesomeIcons.userGroup),
          title: const Center(
            child: Icon(FontAwesomeIcons.twitter),
          ),
          actions: [const Icon(FontAwesomeIcons.magnifyingGlass)],
        ),
        body: ListView(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Vikash Chauhan',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 24, left: 5),
                      child: Text(
                        '@rajvikki',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w600),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 24, left: 100),
                      child: Text(
                        '10s',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w100),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [const Text('    Home')],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, top: 0),
                    child: Card(
                      child: Image.network(
                        'https://images.pexels.com/photos/258109/pexels-photo-258109.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                      ),
                    ),
                  ),
                  Row(
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Icon(
                          FontAwesomeIcons.share,
                          size: 15,
                        ),
                      ),
                      Text(
                        ' 150.9k',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.retweet),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.heart),
                      ),
                      Text(
                        ' 200K',
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Icon(FontAwesomeIcons.forward),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Bharat',
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 18, left: 5),
                      child: Text(
                        '@bhy',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w600),
                      )),
                  Padding(
                      padding: EdgeInsets.only(top: 19, left: 160),
                      child: Text(
                        '10s',
                        style: TextStyle(
                            fontSize: 9.0, fontWeight: FontWeight.w100),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [const Text('     nice!!')],
              )
            ],
          )

          // Padding(
          //   padding: const EdgeInsets.only(left: 90, top: 0),
        ]));
  }
}
