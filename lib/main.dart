//heavy lifting will be  done from within the ios or android engine.
//just need to call the specific function to populate the results
import 'package:flutter/material.dart'; // need this to import Material class to draw widget to screen

// void main() {
//   runApp(MyApp()); //need to mount the widget
// }

void main() => runApp(MyApp()); //equivalent to the statement above
//NOTE: can only be used with only one statement

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override //Can add annotation; telling Dart to override this method
  Widget build(BuildContext context) {
    //can add Widget before build() to make sure a Widget object is returned
    // required because it will need to draw it into the screen
    // Scaffold Widget - from Material package. ship with a nice background and add an app bar.
    return MaterialApp(
      //root widget
      home: Scaffold(
          appBar: AppBar(
            //creates the blue bar widget
            title: Text('EasyList'), //shows the title on the blue bar widget
          ),
          body: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  onPressed: () {
                    setState((){_products.add('Advanced Food Tester');
                    }); //this will tell Flutter to view the changes that occurred
                  },
                  child: Text('Add Product'),
                ),
              ),
              Column(
                children: _products
                  .map((element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/food.jpg'), //need to update the pubspec.yaml file first so flutter knows of the file
                          Text(element)
                        ],
                      ),
                    ),)
                  .toList(),
              )
            ],
          )), //from material class),
    ); //a widget would need to return a widget; MaterialApp() is the root widget
  }
}