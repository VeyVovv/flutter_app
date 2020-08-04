import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screen/profile_screen.dart';
import 'package:flutter_app/screen/settings_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class MainDrawer extends StatelessWidget {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                      height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom:10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage('https://scontent.fbwa1-1.fna.fbcdn.net/v/t1.0-9/106925493_2560182837628150_2651218720226073067_o.jpg?_nc_cat=104&_nc_sid=09cbfe&_nc_ohc=6ixmhZTAuDIAX8lChP9&_nc_ht=scontent.fbwa1-1.fna&oh=40ab1ea0baacba44daeee5d0997ed871&oe=5F4CBAA7'),
                    fit: BoxFit.fill ),
                  ),
              ),
                  Text(
                    'Anzaan Annex',
                    style: TextStyle(
                      fontSize: 22,
                      color:Colors.white,
                    ),
                  ),
                  Text(
                    'veyvovvsapkota@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title:Text(
              'Profile',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title:Text(
              'Search a Mechanic',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(SettingsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title:Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: (){
              SystemNavigator.pop();
            }
          ),
        ],
      ),
    );
  }
}