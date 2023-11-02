import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usina/features/agronegocio/agronegocio_page.dart';
import 'package:usina/features/agronegocio/bloc/agronegocio_bloc.dart';
import 'package:usina/features/empresa/bloc/empresa_bloc.dart';
import 'package:usina/features/empresa/empresa_page.dart';
import 'package:usina/features/faleconosco/bloc/faleconosco_bloc.dart';
import 'package:usina/features/faleconosco/faleconosco_page.dart';
import 'package:usina/features/mineral/bloc/mineral_bloc.dart';
import 'package:usina/features/mineral/mineral_page.dart';
import 'package:usina/features/pedra/bloc/pedra_bloc.dart';
import 'package:usina/features/pedra/pedra_page.dart';
import 'package:usina/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      routes: {
        '/home': (_) => const HomePage(),
        '/agronegocio/page': (_) => BlocProvider(
              create: (_) => AgronegocioBloc()..add(AgronegocioFillPageEvent()),
              child: const AgronegocioPage(),
            ),
        '/mineral/page': (_) => BlocProvider(
              create: (_) => MineralBloc()..add(MineralFillPageEvent()),
              child: const MineralPage(),
            ),
        '/pedra/page': (_) => BlocProvider(
              create: (_) => PedraBloc()..add(PedraFillPageEvent()),
              child: const PedraPage(),
            ),
        '/empresa/page': (_) => BlocProvider(
              create: (_) => EmpresaBloc()..add(EmpresaFillPageEvent()),
              child: const EmpresaPage(),
            ),
        '/faleconosco/page': (_) => BlocProvider(
              create: (_) => FaleconoscoBloc()..add(FaleconoscoFillPageEvent()),
              child: const FaleconoscoPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
