import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String tes = 'lorem ipsum';
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.settings,
              color: Colors.blueAccent,
            ),
          )
        ],
        leading: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.grey,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Card(
            child: SizedBox(
              height: 100,
              child: Row(children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                const Spacer(),
                const Text('LOREM IPSIDAIOSDJAUISYBDUH'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('follow'),
                  ),
                ),
              ]),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100,
              child: Row(children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                const Spacer(),
                const Text('LOREM IPSIDAIOSDJAUISYBDUH'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('follow'),
                  ),
                ),
              ]),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100,
              child: Row(children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                const Spacer(),
                const Text('LOREM IPSIDAIOSDJAUISYBDUH'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('follow'),
                  ),
                ),
              ]),
            ),
          ),
          Card(
            child: SizedBox(
              height: 100,
              child: Row(children: [
                const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 30,
                ),
                const Spacer(),
                const Text('$tes'),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/data',
                          arguments: {'name': tes});
                    },
                    child: const Text('follow'),
                  ),
                ),
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
