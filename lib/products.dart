import 'package:flutter/material.dart';

class  Products extends StatelessWidget {

final List <String> products; //mark this list as unchangeable because it is a StatelessWidget

Products(this.products);

  @override
    Widget build(BuildContext context) {
      return      Column(
                children: products
                  .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'), //need to update the pubspec.yaml file first so flutter knows of the file
                          Text(element)
                        ],
                      ),
                    ),)
                  .toList(),
              );
    }
}