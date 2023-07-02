// Importing the 'bottomnav.dart' file from the 'ebookapp' package.
import 'package:ebookapp/bottomnav.dart';
// Importing the 'color.dart' file from the 'ebookapp' package.
import 'package:ebookapp/color.dart';

// Importing the material.dart file from the Flutter framework.
import 'package:flutter/material.dart';

// Importing the 'homepage.dart' file from the current package.
import 'homepage.dart';

// The entry point of the application.
void main() {
  // Runs the MyApp widget as the root of the application.
  runApp(const MyApp());
}

// Defining the MyApp widget as a StatelessWidget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Builds the user interface for the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Disables the debug banner on the top-right corner of the app.
      debugShowCheckedModeBanner: false,
      
      // Sets the title of the application.
      title: 'ebook app',
      
      // Configuring the theme of the application.
      theme: ThemeData(
        // Sets the default font family for the app.
        fontFamily: 'Poppins',
        
        // Sets the background color to the KPrimaryColor defined in 'color.dart'.
        backgroundColor: KPrimaryColor,
      ),
      
      // Sets the home page of the application to the BottomNavBar widget.
      home: const BottomNavBar(),
    );
  }
}

