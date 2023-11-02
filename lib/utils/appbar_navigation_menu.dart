import 'package:flutter/material.dart';

class AppbarNavigationMenu extends PreferredSize {
  const AppbarNavigationMenu(
      {super.key, required super.preferredSize, required super.child});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 198, 243, 200),
      toolbarHeight: 200,
      leadingWidth: 400, //set leading height. By default width is 56
      leading: Padding(
          padding: const EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            }, // Image tapped
            child: Image.asset(
              'images/soja.jpg',
              fit: BoxFit.cover, // Fixes border issues
              width: 400.0,
              height: 400.0,
            ),
          )),
      centerTitle: false,
      title: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'INTERNATIONAL COMMODITIES ',
                    style: TextStyle(fontSize: 35),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Agro Negócio',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/agronegocio/page');
                      }),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Minerais',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/mineral/page');
                      }),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Pedras',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/pedra/page');
                      }),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Empresas',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/empresa/page');
                      }),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  TextButton(
                      child: const Text(
                        'Fale Conosco',
                        style: TextStyle(fontSize: 18),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/faleconosco/page');
                      }),
                ],
              ),
            ],
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.indigo,
              size: 24.0,
              semanticLabel: 'Text2 to announce in accessibility modes',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.access_alarm,
              color: Colors.green,
              size: 24.0,
              semanticLabel: 'Text2 to announce in accessibility modes',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.accessible,
              color: Colors.grey,
              size: 24.0,
              semanticLabel: 'Text2 to announce in accessibility modes',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 3),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.agriculture,
              color: Colors.blue,
              size: 24.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ),
      ],
    );
  }
}
