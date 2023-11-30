import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(Icons.switch_access_shortcut_rounded),
          )
        ],
      ),
      body: Column(
        children: [
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
          SizedBox(
            height: 30,
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
            ],
          )),
          const SizedBox(
            width: 30,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.spa_outlined,
        ),
      ),
    );
  }
}
