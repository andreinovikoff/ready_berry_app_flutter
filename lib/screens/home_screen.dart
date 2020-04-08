import 'package:flutter/material.dart';
import 'package:ready_berry/widgets/berry_selector.dart';
import 'package:ready_berry/widgets/category_selector.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
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
                height: 50.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.menu,
                      color: Color(0xFFD79EC2),
                      ), 
                      onPressed: (){},
                      ),
                      IconButton(
                      icon: Icon(Icons.favorite_border,
                      color: Color(0xFFD79EC2),
                      ), 
                      onPressed: (){},
                      ),
                  ],
                ),
              ),
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
      ),
    );
  }
}
