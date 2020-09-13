import 'package:flutter/material.dart';

class Categorias {
  String img;
  String nombreCategoria;
  Color color;

  Categorias(this.img, this.nombreCategoria, this.color);
}

List<Categorias> listaCategorias = categoriasModel
    .map((item) => Categorias(item['image'], item['nombre'], item['color'])).toList();

var categoriasModel = [
  {
    "image": "assets/img/tacos.svg",
    "nombre": "Tacos",
    "color": Color.fromRGBO(233, 243, 212, 1)
  },
  {
    "image": "assets/img/frias.svg",
    "nombre": "Frias",
    "color": Color.fromRGBO(198, 242, 232, 1)
  },
  {
    "image": "assets/img/burguer.svg",
    "nombre": "Burger",
    "color": Color.fromRGBO(255, 239, 205, 1)
  },
  {
    "image": "assets/img/pizza.svg",
    "nombre": "Pizza",
    "color": Color.fromRGBO(255, 216, 216, 1)
  },
   {
    "image": "assets/img/burritos.svg",
    "nombre": "Burritos",
    "color": Color.fromRGBO(231, 215, 237, 1)
  },
];
