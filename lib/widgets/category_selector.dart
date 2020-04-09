import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['All', 'Veggies', 'Fruit', 'Flowers'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              child: Container(
                alignment: Alignment.center,
                width: 80.0,
                height: 26.0,
                decoration: index != selectedIndex ? BoxDecoration(
                  color: Color(0xffFCF5F4),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [BoxShadow(
                    offset: Offset(5.0, 3.0),
                    blurRadius: 6.0,
                    color: Color(0xFFEDC7DB),
                  ),
                  BoxShadow(
                    offset: Offset(-1.0, -1.0),
                    color: Colors.white,
                    blurRadius: 2.0,
                    )
                  ],
                ) : BoxDecoration(
                  color: Color(0xffFCF5F4),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [BoxShadow(
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                    color: Color(0xFFEDC7DB),
                  )]
                  ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: index == selectedIndex
                        ? Color(0xFFD79EC2)
                        : Colors.blueGrey,
                        fontWeight: index == selectedIndex 
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: 14.0,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
