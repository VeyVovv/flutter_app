import 'package:flutter/material.dart';
import 'package:flutter_app/screen/profile_screen.dart';
import 'package:flutter_app/screen/settings_screen.dart';
import './screen/details_screen.dart';
import './screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //home: HomeScreen()
        //initialRoute: '/',
        routes: {
        '/': (_) => HomeScreen(),
          //'/details-screen': (_) => DetailsScreen(),
          DetailsScreen.routeName: (_) => DetailsScreen(),
          ProfileScreen.routeName: (_) => ProfileScreen(),
          SettingsScreen.routeName: (_) => SettingsScreen(),
    }

    );
  }
}

