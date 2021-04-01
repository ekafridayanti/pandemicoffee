import 'package:flutter/material.dart';
import 'package:pandemi_coffee/core/const.dart';

class DetailMenu extends StatefulWidget {
  DetailMenu(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //variabel yang digunakan untuk menampung parameter detailmenu
  final String name;
  final String description;
  final String price;
  final String image;
  final int star;
  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  //inisialisasi variabel star
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    //membuat star secara dinamis sesuai dengan jumlah star yang dikirim dari list produk
    for (var i = 0; i < widget.star; i++) {
      childrenstar.add(new Icon(
        Icons.star,
        size: 15,
        color: Colors.orange,
      ));
    }
    //widget Scaffold sebagai isi halaman
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        title: new Text("${widget.name}"),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/${widget.image}',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 2,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 2 - 20.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                          color: Colors.white))),
              //conten
              Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 25.0,
                  left: 15.0,
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 2) - 50.0,
                    width: MediaQuery.of(context).size.width,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 300,
                            child: Text(
                              "${widget.name}",
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: childrenstar,
                          ),
                          SizedBox(height: 24),
                          Text(
                            "DETAILS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "${widget.description}",
                            style: TextStyle(
                              color: Colors.black38,
                            ),
                          ),
                          SizedBox(height: 24),
                          SizedBox(height: 16),
                          Row(
                            children: <Widget>[
                              _buildImage("assets/coffee.jpg"),
                              _buildImage("assets/coffee2.jpg"),
                              _buildImage("assets/coffee3.jpg"),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
              Positioned(
                bottom: 0,
                child: _buildBottom(),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height / 4,
                  left: 200.0,
                  child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/pinkcup.png'),
                              fit: BoxFit.cover)))),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "PRICE",
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              Text(
                "${widget.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 50,
            ),
            decoration: BoxDecoration(
              color: Colors.brown,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Text(
              "ADD CART",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }

  Widget _buildImage(String image) {
    return Container(
      width: 20,
      height: 20,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/${widget.image}"), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
    );
  }
}
