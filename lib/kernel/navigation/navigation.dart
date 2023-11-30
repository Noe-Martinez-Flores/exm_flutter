import 'package:examen_u2/kernel/navigation/botton_navigation_tab.dart';
import 'package:examen_u2/modules/menu/screen/menu_screen.dart';
import 'package:examen_u2/modules/notification/screen/notification_screen.dart';
import 'package:examen_u2/modules/profile/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late SharedPreferences preferences;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    preferences = await SharedPreferences.getInstance();
    final bool? firstTime = preferences.getBool('first');
    if (firstTime == null) {
      await preferences.setBool('first', true);
    } else {
      return null;
    }
  }

  int _selected = 0;
  void _onItenTrapped(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selected,
        children: const [MenuScreen(), NotificationScreen(), ProfileScreen()],
      ),
      bottomNavigationBar: BottomTabNavigation(
          selected: _selected, onItemTrapped: _onItenTrapped),
    );
  }
}
