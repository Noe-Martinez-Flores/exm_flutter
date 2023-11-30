import 'package:flutter/material.dart';

class BottomTabNavigation extends StatelessWidget {
  final int selected;
  final Function(int) onItemTrapped;
  const BottomTabNavigation(
      {super.key, required this.selected, required this.onItemTrapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'Notificaciones'),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Perfil',
        )
      ],
      currentIndex: selected,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: onItemTrapped,
    );
  }
}
