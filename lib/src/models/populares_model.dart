

class Populares {
  String image;
  String headerImage;
  String nombre;
  String subName;
  String descripcion;
  double precio;


  Populares(this.image,this.headerImage, this.nombre, this.subName, this.descripcion,
      this.precio);
}

class Ingredientes{
  String image;
  String nombre;

  Ingredientes(this.image, this.nombre);
}

List<Populares> listaPopulares = popularesModel
    .map((item) => Populares(item['image'],item['headerImage'], item['nombre'], item['subName'], item['descripcion'], 
                            item['precio']))
    .toList();

var popularesModel = [
  {
    "image": "assets/img/pizza.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Pizza Clásica",
    "subName": "Salsa clásica de la casa",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  },
    {
    "image": "assets/img/burguer.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Hamburguesa mix",
    "subName": "Doble carne con queso",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  },
    {
    "image": "assets/img/pizza.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Pizza Clásica",
    "subName": "Salsa clásica de la casa",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  },
    {
    "image": "assets/img/burguer.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Hamburguesa mix",
    "subName": "Doble carne con queso",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  }
];
