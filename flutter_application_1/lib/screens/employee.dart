import 'package:flutter/material.dart';

class Employee extends StatelessWidget {
  const Employee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        leading: const Icon(Icons.person),
        title: const Text('Employee Info'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  'https://image.tmdb.org/t/p/original/oDmVFoqIzxOyZejGjy3J5QrUmjM.jpg',
                  height: 300,
                  width: 300,
                ),
                const SizedBox(height: 5.0),
                Expanded(
                  child: Column(
                    children: const [
                      Center(
                        child: Text(
                          'Doland Trump',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Empolyee id = xxxx',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Dept : ST',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Date of Joining : 31st jan',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  'Address : USA',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  'Fav Sport : Election',
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
