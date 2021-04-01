import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pandemi_coffee/about_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Pandemi Coffee")],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Click Start");
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print("Click Start");
            },
          ),
        ],
      ),

      //drawer profil user
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Eka Fridayanti"),
              accountEmail: new Text("eka.fridayanti@undiksha.ac.id"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(
                      'https://lh3.google.com/u/0/ogw/ADGmqu-qwOpGhSR6gTBNMjf4Cux9_s6H92scDh-nLouB=s192-c-mo'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profilebg.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text('About'),
              trailing: new Icon(Icons.apps),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutApp()));
              },
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
              onTap: () {
                print("Click Start");
              },
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
              onTap: () {
                print("Click Start");
              },
            ),
            new ListTile(
              title: new Text('Account'),
              trailing: new Icon(Icons.verified_user),
              onTap: () {
                print("Click Start");
              },
            ),
            new ListTile(
              title: new Text('Setting'),
              trailing: new Icon(Icons.settings),
              onTap: () {
                print("click");
              },
            ),
          ],
        ),
      ),
      //membuat body listView untuk tampilan homepage
      body: Container(
        child: ListView(
          children: <Widget>[
            //promo screen
            Padding(
              padding: const EdgeInsets.only(right: 45.0, left: 20.0),
              child: Text(
                "Welcome,",
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF473D3A)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 45.0, left: 20.0),
              child: Container(
                child: Text(
                  'Let\'s select the best taste for your next coffee break!',
                  style: TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFFB0AAA7),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Image.asset("assets/images/header.jpg"),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hot Caramel Latte',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.orange),
                            Icon(Icons.star, color: Colors.orange),
                            Icon(Icons.star, color: Colors.orange),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Rp. 20.000',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.orangeAccent),
                  ),
                ],
              ),
            ),
            //container untuk promosi buy 1 get 1
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 10),
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.orange, Colors.yellow],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hot Latte',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Buy 1 Get 1 FRee Espreso',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text('Cek Sekarang !'),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black26, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, top: 22, bottom: 12),
              child: Text(
                "Orderkuy!",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal),
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16),
              //membuat column untuk membuat 2 column katagori
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    //membuat row untuk membuat baris kategori 1 pada column 1
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.brown[50], width: 1)),
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/all.png",
                                    fit: BoxFit.contain),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('All Coffee'),
                                      Text(
                                        'Much Better',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.brown[50], width: 1)),
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/promo.png",
                                    fit: BoxFit.contain),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Promotion'),
                                      Text(
                                        'Getting Easier',
                                        style: TextStyle(fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //membuat Row untuk row kedua pada column kedua
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.brown[50], width: 1)),
                            //buat baris untuk image, teks kategori top coffee
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/popular1.png",
                                    fit: BoxFit.contain),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Top Coffee'),
                                      Text(
                                        'Its Yummy',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //membuat container untuk katageri Order
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    color: Colors.brown[50], width: 1)),
                            //membuat baris untuk katerogi Order
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/order.png",
                                    fit: BoxFit.contain),
                                Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Order'),
                                      Text(
                                        'My Coffee',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Explore nearby',
                          style: TextStyle(
                              fontFamily: 'varela',
                              fontSize: 17.0,
                              color: Color(0xFF473D3A)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            'See All',
                            style: TextStyle(
                                fontFamily: 'varela',
                                fontSize: 15.0,
                                color: Color(0xFFCEC7C4)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Container(
                        height: 125.0,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              _buildImage('assets/images/coffee.jpg'),
                              _buildImage('assets/images/coffee2.jpg'),
                              _buildImage('assets/images/coffee3.jpg')
                            ])),

                    SizedBox(height: 20.0)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildImage(String imgPath) {
    return Padding(
        padding: EdgeInsets.only(right: 15.0),
        child: Container(
            height: 100.0,
            width: 175.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(imgPath), fit: BoxFit.cover))));
  }
}
