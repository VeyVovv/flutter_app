import 'package:flutter/material.dart';
import './main_drawer.dart';
import 'home_screen.dart';

class SettingsScreen extends StatelessWidget{
  static const routeName = '/settings-screen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Account Settings'),
        ),
        drawer: MainDrawer(),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Your account settings are displayed here.',
                  style: TextStyle(fontSize: 20,),),
                FloatingActionButton(
                  child: Icon(Icons.home),
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                ),
              ],
            )
        )
    );
  }
}