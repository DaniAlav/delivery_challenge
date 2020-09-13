import 'package:delivery_app/src/models/categorias_model.dart';
import 'package:delivery_app/src/utils/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class ListaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      child: ListView.builder(
        // shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: listaCategorias.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => _itemCategoria(listaCategorias[index]),
      ),
    );
  }

  Widget _itemCategoria(Categorias categorias) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, left: 16.0),
      child: Column(
        children: [
          Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: categorias.color,
            borderRadius: BorderRadius.circular(13.0)  
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(categorias.img),
          ),
          ),
          SizedBox(height: 5.0,),
          Text(
            categorias.nombreCategoria,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Constantes.kBlue,
              fontWeight: FontWeight.w500,
              fontSize: 12.0
            ),
            )
        ]
      ),
    );
  }
}
