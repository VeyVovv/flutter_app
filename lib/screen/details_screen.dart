import 'package:flutter/material.dart';
import './main_drawer.dart';

class DetailsScreen extends StatelessWidget{
  static const routeName = '/details-screen';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Nearby your Location'),
        ),
        drawer: MainDrawer(),
        body: Center(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You can find the services nearby you here.',
                  style: TextStyle(fontSize: 20,),),
                FloatingActionButton(
                  child: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )

              ],
            )
        )
    );
  }
}