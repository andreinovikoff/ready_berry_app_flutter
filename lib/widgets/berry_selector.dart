import 'package:flutter/material.dart';
import 'package:ready_berry/models/berry_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ready_berry/models/popup_content.dart';

class BerrySelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          Container(child: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          crossAxisSpacing: 2.0,
          children: List.generate(berries.length, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 167.0,
                    width: 167.0,
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
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 120.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Color(0xFFD79EC2),
                              Color(0xFFFDF0DF),
                            ],
                          ),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            showPopup(context, _popupBody(), 'Demo');
                          },
                          child: SvgPicture.asset(
                            berries[index].imageUrl,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 18,
                    child: Text(
                      berries[index].name,
                      style: TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontSize: 22,
                        fontFamily: 'Dancing',
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      })),
    );
  }

  Widget _popupBody() {
    return Container(
        child: Text('Demo'),
        );
  }
}
