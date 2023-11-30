import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({super.key, required this.title});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences preferences;
  bool isUserRegister = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
    Future.delayed(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, '/main'));
  }

  _asyncMethod() async {
    preferences = await SharedPreferences.getInstance();
    final String? resp = preferences.getString('first');
    // ignore: use_build_context_synchronously
    if (resp != null) Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/xLogo.png',
            width: 250,
            height: 250,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(widget.title)
        ],
      )),
    );
  }
}
