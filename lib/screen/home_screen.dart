import 'package:flutter/material.dart';
import 'package:flutter_app/screen/main_drawer.dart';
import 'details_screen.dart';
import './main_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('We are in the home page now.',
            style: TextStyle(fontSize: 22,),),
            RaisedButton(
              child: Text('Nearby your Location'),
              onPressed: (){
                Navigator.of(context).pushNamed(DetailsScreen.routeName);
               // Navigator.push(context,MaterialPageRoute(builder: (context) => DetailsScreen(),));

              }
            )
          ],
        )
      )
    );
  }
}