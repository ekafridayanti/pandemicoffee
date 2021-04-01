import 'package:flutter/material.dart';
import './detailmenu.dart';

class ListCoffee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFDAB68C),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LIST COFFEE",
              )
            ],
          )),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailMenu(
                  name: "Americano",
                  description:
                      "Caffè Americano atau Amerikano adalah minuman kopi yang dibuat dengan mencampurkan satu seloki espresso dengan air panas. Air panas yang digunakan dalam minuman ini adalah sebanyak 6 hingga 8 ons",
                  price: "Rp. 25.000",
                  image: "americano.jpg",
                  star: 4,
                ),
              ));
            },
            //menambah class ProductBox
            child: DetailBoxCoffee(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Americano",
              description:
                  "Caffè Americano atau Amerikano adalah minuman kopi yang dibuat Kelembutan Hati",
              price: "Rp. 25.000",
              image: "americano.jpg",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailMenu(
                  name: "Espresso",
                  description:
                      "Espresso adalah inti semesta kopi. Well, Must Try.",
                  price: "Rp. 15.000",
                  image: "espreso.jpg",
                  star: 4,
                ),
              ));
            },
            //menambah class ProductBox
            child: DetailBoxCoffee(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Espresso",
              description: "Espresso adalah inti semesta kopi. Well, Must Try.",
              price: "Rp. 15.000",
              image: "espreso.jpg",
              star: 4,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailMenu(
                  name: "Macchiato 19",
                  description:
                      "Macchiato memberi kelembutan macchiato yang menyegarkan.",
                  price: "Rp. 19.000",
                  image: "maciato.jpg",
                  star: 5,
                ),
              ));
            },
            //menambah class ProductBox
            child: DetailBoxCoffee(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Macchiato 19",
              description:
                  "Macchiato memberi kelembutan macchiato yang menyegarkan.",
              price: "Rp. 19.000",
              image: "maciato.jpg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailMenu(
                  name: "Cappucino",
                  description:
                      "Cappucino adalah minuman khas Italia yang dibuat dari espresso dan susu, dengan selera pecinta coffee.",
                  price: "Rp. 22.000",
                  image: "cappuccino.jpg",
                  star: 5,
                ),
              ));
            },
            //menambah class ProductBox
            child: DetailBoxCoffee(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Cappucino",
              description:
                  "Cappucino adalah minuman khas Italia yang dibuat dari espresso dan susu, dengan selera pecinta coffee.",
              price: "Rp. 22.000",
              image: "cappuccino.jpg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailMenu(
                  name: "Hot Caramel Latte",
                  description:
                      "Kombinasi pahit espresso short serta creamy susu dan sirup caramel .",
                  price: "Rp. 20.000",
                  image: "header.jpg",
                  star: 3,
                ),
              ));
            },
            //menambah class ProductBox
            child: DetailBoxCoffee(
              //berisi parameter yang diperlukan di class ProcuctBox
              name: "Hot Caramel Latte",
              description:
                  "Kombinasi pahit espresso short serta creamy susu dan sirup caramel.",
              price: "Rp. 20.000",
              image: "header.jpg",
              star: 3,
            ),
          ),
        ],
      ),
    );
  }
}

//membuat class Produkbox dengan Widget StatelessWidget
class DetailBoxCoffee extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyhomePage
  DetailBoxCoffee(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //variabel yang digunakan untuk menmpung parameter tersebut
  final String name;
  final String description;
  final String price;
  final String image;
  final int star;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.orange,
      ));
    }
    //menggunakan widget container
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/images/" + image,
              width: 150,
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              //membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //isi tampilan vertical
                children: <Widget>[
                  Text(this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      )),
                  Text(this.description),
                  Text("Price: " + this.price.toString(),
                      style: TextStyle(color: Colors.orange, fontSize: 18)),
                  //menampilkan Widget Icon dibungkus dengan row
                  Row(
                    children: <Widget>[
                      Row(
                        children: children,
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
