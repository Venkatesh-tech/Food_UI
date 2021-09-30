import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  buildMenuItem(String foodType, img) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),//Asset image add here
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black87.withOpacity(0.3),
                    Colors.black54.withOpacity(0.3),
                    Colors.black38.withOpacity(0.3),
                  ],
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                    0.9
                  ]
                  ),
            ),
          ),
          Positioned(
            bottom: 65.0,
            child: Column(
              children: <Widget>[
                Text(
                  foodType,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 10.0,
            child: Container(
                width: 48.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.yellow[600],
                ),
                child: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 30.0,
                  icon: Icon(Icons.add),
                ),
              ),
          ),
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        title: Text("Category",
        style: 
        TextStyle(
            fontSize: 21.0,
            fontWeight: FontWeight.w600,
            color: Colors.grey,
          )
          ),
          leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.list, color: Colors.grey),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.notifications_none, color: Colors.grey),
    ),
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.import_contacts_sharp, color: Colors.grey),
    ),
  ],
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
                Row(
                  children: [
                    buildMenuItem("Desserts and Drinks", "assets/images/bag_1.jpg"),
                    SizedBox(width: 5.0),
                    buildMenuItem("Fast food", "assets/images/bag_2.jpg"),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    buildMenuItem("Korean food", "assets/images/bag_3.jpg"),
                    SizedBox(width: 5.0),
                    buildMenuItem("Chinese food", "assets/images/bag_4.jpg"),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    buildMenuItem("Mala food", "assets/images/bag_5.jpg"),
                    SizedBox(width: 5.0),
                    buildMenuItem("Sea food", "assets/images/bag_6.jpg"),
                  ],
                )
                
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp, color: Colors.grey),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Colors.grey),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel, color: Colors.grey),
            label: 'School',
          ),
        ],
        // currentIndex: null,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
