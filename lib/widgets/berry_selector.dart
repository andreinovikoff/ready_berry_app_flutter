import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ready_berry/models/berry_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_arc_text/flutter_arc_text.dart';


class BerrySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 500.0,
        child: OrientationBuilder(builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            crossAxisSpacing: 2.0,
            children: List.generate(berries.length, (index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[Container(
                    height: 150.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xFFE9BDDA).withOpacity(0.6), 
                          Color(0xFFFDF0DF),
                          ],
                          ),
                          ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                      height: 110.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                      gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                    Color(0xFFD79EC2), 
                    Color(0xFFFDF0DF),
                    ],),),
                      padding: EdgeInsets.all(10.0),
                    child: SvgPicture.asset(berries[index].imageUrl,
                    ),
                      ),
                      ],
                    )
                      ),],
                    ),
                    ArcText(
                      radius: -50,
                      text: berries[index].name,
                      textStyle: TextStyle(letterSpacing: 2.0,
                      fontSize: 16.0,
                      ),
                      startAngle: 20,
                      ),
                  ],
                ),
              );
            }),
          );
        }));
  }
}
