//heavy lifting will be  done from within the ios or android engine.
//just need to call the specific function to populate the results
import 'package:flutter/material.dart'; // need this to import Material class to draw widget to screen

main() {
  runApp(MyApp()); //need to mount the widget
} 

class MyApp extends StatelessWidget {
  build(context) {
    // required because it will need to draw it into the screen
    // Scaffold Widget - from Material package. ship with a nice background and add an app bar.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
      ),
    ); //a widget would need to return a widget; MaterialApp() is the root widget
  }
}
