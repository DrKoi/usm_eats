import 'package:flutter/material.dart';

import '../pages/comida_rapida_page.dart';
import 'package:figueroa_kevin_cert1/constants.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:figueroa_kevin_cert1/constants.dart';
import 'package:figueroa_kevin_cert1/models/item_model.dart';
import 'package:figueroa_kevin_cert1/widgets/bloque_comida.dart';

class BloqueComida extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String precio;
  final String descripcion;
  const BloqueComida(
      {Key? key,
      this.titulo = '',
      this.descripcion = '',
      this.precio = '',
      this.imagen = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF1B6A5D)),
        borderRadius: BorderRadius.circular(5),
        color: Color(0xFFF7F7E0),
      ),
      height: 100,
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                this.titulo,
                style: kTxtTitulo,
              ),
              Text(this.descripcion),
              Spacer(),
              Text(
                this.precio,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Container(height: 100, child: Image(image: AssetImage(this.imagen)))
        ],
      ),
    );
  }
}
