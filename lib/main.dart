import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget Crousel = new Container(
      height: 220.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 6.0,
        dotIncreasedColor: Color(0xFFFF335C),
        dotBgColor: Colors.transparent,
        dotPosition: DotPosition.topRight,
        dotVerticalPadding: 10.0,
        showIndicator: true,
        indicatorBgPadding: 7.0,
        images: [
          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
          NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
        ],
      ),
    ) ;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        title: Text("Appbar"),
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search button clicked");
              }),
          new IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                print("Cart bnytton cliked");
              })
        ],
      ),
      drawer: Drawer(
        child: new ListView(
          children: <Widget>[
//            header
            new UserAccountsDrawerHeader(
              accountName: Text("Hackdroid"),
              accountEmail: Text("hackdroidbykhan@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(
                    Icons.verified_user,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.greenAccent),
            ),
            //Body
            InkWell(
              onTap: () {
                print("Home page cliked");
              },
              child: ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home , color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.account_circle , color: Colors.redAccent,),
              ),
            ) ,
             InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(Icons.shopping_basket , color: Colors.redAccent,),
              ),
            ) , InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.dashboard , color: Colors.redAccent,),
              ),
            ) ,
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourite"),
                leading: Icon(Icons.healing , color: Colors.redAccent,),
              ),
            ) ,
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings , color: Colors.redAccent,),
              ),
            ) ,
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help , color: Colors.blue,),
              ),
            ) ,
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Crousel,


    );
  }
}
