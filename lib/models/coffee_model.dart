import 'package:flutter/material.dart';

class CoffeeModel {
  final String name;
  final String desc;
  final String price;
  final String imgPath;
  final String image;
  final int star;

  CoffeeModel(
      {this.name, this.desc, this.price, this.imgPath, this.image, this.star});

  static List<CoffeeModel> list = [
    CoffeeModel(
      name: "Americano",
      desc:
          "Caffè Americano atau Amerikano adalah minuman kopi yang dibuat dengan mencampurkan satu seloki espresso dengan air panas. Air panas yang digunakan dalam minuman ini adalah sebanyak 6 hingga 8 ons",
      price: "Rp. 25.000",
      image: "americano.jpg",
      star: 4,
    ),
    CoffeeModel(
      name: "Espresso",
      desc: "Espresso adalah inti semesta kopi. Well, Must Try.",
      price: "Rp. 15.000",
      image: "espreso.jpg",
      star: 4,
    ),
    CoffeeModel(
      name: "Macchiato 19",
      desc: "Macchiato memberi kelembutan macchiato yang menyegarkan.",
      price: "Rp. 19.000",
      image: "maciato.jpg",
      star: 5,
    ),
    CoffeeModel(
      name: "Cappucino",
      desc:
          "Cappucino adalah minuman khas Italia yang dibuat dari espresso dan susu, dengan selera pecinta coffee.",
      price: "Rp. 22.000",
      image: "cappuccino.jpg",
      star: 5,
    ),
    CoffeeModel(
      name: "Hot Caramel Latte",
      desc:
          "Kombinasi pahit espresso short serta creamy susu dan sirup caramel .",
      price: "Rp. 20.000",
      image: "header.jpg",
      star: 3,
    )
  ];
}
