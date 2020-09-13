class Recomendados {
  String image;
  String headerImage;
  String nombre;
  String subName;
  String descripcion;
  double precio;


  Recomendados(this.image,this.headerImage, this.nombre, this.subName, this.descripcion,
      this.precio);
}

class Ingredientes{
  String image;
  String nombre;

  Ingredientes(this.image, this.nombre);
}

List<Recomendados> listaRecomendados = recomendadosModel
    .map((item) => Recomendados(item['image'],item['headerImage'], item['nombre'], item['subName'], item['descripcion'], 
                            item['precio']))
    .toList();
  var recomendadosModel = [
  {
    "image": "assets/img/vasoos.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Malteadas tropicales",
    "subName": "Elaborado con jugos naturales",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  },
    {
    "image": "assets/img/mateadas.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Hamburguesa mix",
    "subName": "Doble carne con queso",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 12.58,
  },
    {
    "image": "assets/img/vasoos.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Pizza Clásica",
    "subName": "Salsa clásica de la casa",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 20.58,
  },
    {
    "image": "assets/img/mateadas.png",
    "headerImage": "assets/img/tacos.svg",
    "nombre": "Hamburguesa mix",
    "subName": "Doble carne con queso",
    "descripcion":
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
    "precio": 20.58,
  }
];