import 'package:flutter/material.dart';

import '../views/exercises_page.dart';
import '../views/favourites_page.dart';
import '../views/friends_page.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Francisco'), 
            accountEmail: Text('fran@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media.licdn.com/dms/image/D4D03AQEoYBrZhOpPFA/profile-displayphoto-shrink_800_800/0/1674535254481?e=1686182400&v=beta&t=u2AFQMkzK3CnQC9juwhuXaUIJKX5XaNHCRqrSbT-Y2c',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                  ),
                
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                'https://img.freepik.com/free-photo/abstract-grunge-decorative-relief-navy-blue-stucco-wall-texture-wide-angle-rough-colored-background_1258-28311.jpg?w=2000',
                ),
              fit: BoxFit.cover
                )
            ),
            ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavouritesPage()
                ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.fitness_center_outlined),
            title: Text('Exercises'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExercisesPage()
                ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FriendsPage()
                ),
          ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Requests'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red, 
                width: 20, 
                height: 20,),
            )
              ,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.policy),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}