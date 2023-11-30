import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://steamuserimages-a.akamaihd.net/ugc/1625227245697579001/D4FABF0C47468DC747B3AEDFB39C5DFB044B460B/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('follow'),
                  ),
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Noe Martinez Flores',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.verified)
                ]),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_disabled_sharp),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Location')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_disabled_sharp),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Location')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_disabled_sharp),
                          SizedBox(
                            width: 15,
                          ),
                          Text('Location')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Card(
                child: Column(
              children: [
                Row(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 50),
                    child: const CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 35,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 30),
                          child: const Align(
                              alignment: Alignment.topLeft,
                              child: Text('lorem ipsum hahahahahahaha'))),
                      Container(
                        height: 90,
                        width: 300,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 160,
                    ),
                    Icon(Icons.comment),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.share),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Icons.favorite_border)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                    child: Column(
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 35,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 30),
                              child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text('lorem ipsum hahahahahahaha'))),
                          Container(
                            height: 90,
                            width: 300,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 160,
                        ),
                        Icon(Icons.comment),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.share),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.favorite_border)
                      ],
                    )
                  ],
                )),
              ],
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.spa_outlined,
        ),
      ),
    );
  }
}
