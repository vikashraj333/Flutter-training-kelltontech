import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/photos/abstract-geometric-network-polygon-globe-graphic-background-picture-id1208738316?b=1&k=20&m=1208738316&s=170667a&w=0&h=f4KWULKjL770nceDM6xi32EbfIgMtBwSp5fPxIx08wc='),
                    fit: BoxFit.cover),
              ),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://d2qp0siotla746.cloudfront.net/img/use-cases/profile-picture/template_0.jpg'),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Center(
              child: Text(
                'Shekhar Srinivasan',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Microsoft Certified Trainer',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          'Likes',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          '10M',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
