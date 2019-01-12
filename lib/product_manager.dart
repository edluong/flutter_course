import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  
  final String stringProduct; //used to pass in variables to the product
  ProductManager(this.stringProduct);

  @override
    State<StatefulWidget> createState() {
     
      return _ProductManagerState();
    }
}

class _ProductManagerState extends State <ProductManager> { 
  List<String> _products = [];

  //initstate() runs before setstate(), so no need to call it within the method
  //lifecycle hook
  @override
    void initState() { //used to make sure the state changes for the variable changed
      super.initState(); //recommended now to move at the beginning
      _products.add(widget.stringProduct); //using widget can access the parent's variables
    }

  @override
    Widget build(BuildContext context) {
      return   Column(children:[Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState((){
                      _products.add('Advanced Food Tester');
                    }); //this will tell Flutter to view the changes that occurred
                  },
                  child: Text('Add Product'),
                ),
      ),
      Products(_products)
      ],);
    }
}