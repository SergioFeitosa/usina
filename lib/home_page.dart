import 'package:flutter/material.dart';
import 'package:usina/utils/appbar_navigation_menu.dart';
import 'package:usina/utils/bottom_navigation_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarNavigationMenu(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 81, 116, 82)),
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}
