import 'package:flutter/material.dart';
import './main_drawer.dart';
import 'home_screen.dart';

class ProfileScreen extends StatelessWidget{
  static const routeName = '/profile-screen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Profile'),
        ),
        drawer: MainDrawer(),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Your account information is displayed here.',
                  style: TextStyle(fontSize: 18,),),
                FloatingActionButton(
                  child: Icon(Icons.home),
                  onPressed: (){
                    Navigator.pop(context);
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                )
              ],
            )
        )
    );
  }
}