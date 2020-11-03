
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


//My own imports
import 'package:shop_app/components/horrizontal_listview.dart';
import 'package:shop_app/components/products.dart';
import 'package:shop_app/pages/cart.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      // animationCurve: Curves.fastOutSlowIn,
      // animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text('ShopApp'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));})
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            // Header

            new UserAccountsDrawerHeader(
                accountName: Text('Pepot'),
                accountEmail: Text('premfort.jernan@gmail.com'),
            currentAccountPicture: GestureDetector(
             child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white, size: 45,),
              )
            ),
              decoration: new BoxDecoration(
                color: Colors.red
              ),
            ),
          //  Body


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));},
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart, color: Colors.red,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
            ),



          ],
        ),
      ),
      body: new ListView(
        children: [
          //image carousel begins here
          image_carousel,

          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
          child: new Text('Categories'),
          ),

          //Horrizontal List View Here
          HorrizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(12.0),
            child: new Text('Recent Products'),
          ),

          //Grid View
          Container(

            height: 250.0 ,
            child: Products(),
          )
        ],
      ),
    );
  }
}
