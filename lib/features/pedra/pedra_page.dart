import 'package:flutter/material.dart';
import 'package:usina/utils/appbar_navigation_menu.dart';
import 'package:usina/utils/bottom_navigation_menu.dart';

class PedraPage extends StatelessWidget {
  const PedraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarNavigationMenu(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.grey),
      ),
      bottomNavigationBar: const BottomNavigationMenu(),
    );
  }
}
