import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'acompanamientos_page.dart';
import 'bebidas_page.dart';
import 'package:figueroa_kevin_cert1/constants.dart';
import 'package:figueroa_kevin_cert1/models/item_model.dart';
import 'package:figueroa_kevin_cert1/widgets/bloque_comida.dart';

class ComidaRapidaPage extends StatefulWidget {
  const ComidaRapidaPage({super.key});

  @override
  State<ComidaRapidaPage> createState() => _ComidaRapidaPageState();
}

List<Item> comidas = [
  Item(
      nombre: 'Completo Italiano',
      descripcion: 'Completo con tomate, palta y mayonesa.',
      precio: 'Precio: \$4.000',
      imagePath: 'assets/completo.png'),
  Item(
      nombre: 'Hamburguesa Tradicional',
      descripcion: 'Contiene queso, lechuga y tomate',
      precio: 'Precio: \$6.000',
      imagePath: 'assets/hamburguesa.png'),
  Item(
      nombre: 'Churrasco Italiano',
      descripcion: 'Contiene tomate, palta y mayonesa',
      precio: 'Precio: \$5.000',
      imagePath: 'assets/churrasco.png'),
  Item(
      nombre: 'Pizza Vegetariana',
      descripcion: 'No tiene carne',
      precio: 'Precio: \$9.000',
      imagePath: 'assets/pizza.png')
];

class _ComidaRapidaPageState extends State<ComidaRapidaPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: comidas.length,
              itemBuilder: (BuildContext context, int index) {
                return BloqueComida(
                  titulo: comidas[index].nombre,
                  descripcion: comidas[index].descripcion,
                  imagen: comidas[index].imagePath,
                  precio: comidas[index].precio,
                );
              },
            ),
          ),
          ElevatedButton(
              style: ButtonStyle(
                //fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 40)),
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              onPressed: () => print(''),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(MdiIcons.cart, color: Colors.yellow),
                  Text('Ver Carrito')
                ],
              ))
        ],
      ),
    );
  }
}
