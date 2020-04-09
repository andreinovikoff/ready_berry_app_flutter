import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ready_berry/widgets/berry_selector.dart';
import 'package:ready_berry/widgets/category_selector.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Color(0xFFE9BDDA)),
        backgroundColor: Color(0xFFFDFCF8),
        elevation: 0.0,
      ),
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color(0xFFD79EC2),
                    Color(0xFFFDF0DF),
                  ],
                ),
              ),
              child: SvgPicture.asset('assets/img/logo-small.svg',
                  fit: BoxFit.scaleDown),
              margin: null,
            ),
            Container(
              height: 50.0,
              margin: EdgeInsets.only(bottom: 20.0),
              color: Color(0xFFE9BDDA),
            ),
            ListTile(
              leading: SvgPicture.asset('assets/img/info.svg'),
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4F4F4F),
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/img/marker.svg'),
              title: Text(
                'Change the location',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4F4F4F),
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: SvgPicture.asset('assets/img/coffee.svg'),
              title: Text(
                'Buy me a coffee :)',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF4F4F4F),
                ),
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0.4, 1.0],
        colors: [
        Theme.of(context).primaryColor,
        Theme.of(context).accentColor,
      ],
      ), 
            ),
            child: Column(
      children: <Widget>[
        Container(
          height: 80.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back,
                size: 23.0,
                color: Color(0xFFD79EC2),
                ), 
                onPressed: () {}
                ),
              Text('APRIL',
              style: TextStyle(
                color: Color(0xFFD79EC2),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward,
                size: 23.0,
                color: Color(0xFFD79EC2),
                ), 
                onPressed: () {}
                ),
            ],
          ),
        ),
        CategorySelector(),
        BerrySelector(),
      ],
            ),
            ),
    );
  }
}
