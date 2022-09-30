import 'package:flutter/material.dart';
import 'comida_rapida_page.dart';
import 'bebidas_page.dart';
import 'acompanamientos_page.dart';
import 'package:figueroa_kevin_cert1/constants.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF152227),
          leading: Icon(
            MdiIcons.foodOutline,
            color: Colors.yellow,
          ),
          title: Row(
            children: [
              Text('USM '),
              Text(
                'Eats',
                style: TextStyle(color: Colors.yellow),
              )
            ],
          ),
          bottom: TabBar(tabs: [
            Tab(
              text: 'Comida Rápida',
            ),
            Tab(
              text: 'Acompañamientos',
            ),
            Tab(
              text: 'Bebidas',
            )
          ]),
        ),
        body: TabBarView(children: [
          ComidaRapidaPage(),
          AcompanamientosPage(),
          BebidasPage(),
        ]),
      ),
    );
  }
}
