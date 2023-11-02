import 'package:flutter/material.dart';
import 'package:usina/utils/appbar_navigation_menu.dart';
import 'package:usina/utils/bottom_navigation_menu.dart';

class FaleconoscoPage extends StatelessWidget {
  const FaleconoscoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarNavigationMenu(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.indigo),
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}
