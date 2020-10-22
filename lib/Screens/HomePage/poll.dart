import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Profile/profile.dart';
import 'file:///C:/Users/masin/AndroidStudioProjects/Welcome-Login-Signup-Page-Flutter-master/lib/Screens/Voting%20Poll/poll.dart';
import 'package:polls/polls.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Home Page'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: new Text('Masibonge Masinga'),
              accountEmail: new Text('h4skcm391@pihe.ac.za'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: new Text('E'),
              ),
            ),
            new ListTile(
              title: new Text('Profile'),
              trailing: new Icon(Icons.person),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfileScreen();
                    },
                  ),
                );
              },
            ),
            new ListTile(
              title: new Text('Voting Section'),
              trailing: new Icon(Icons.check_box),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VotingPollScreen();
                    },
                  ),
                );
              },
            ),
            new ListTile(
              title: new Text('Settings'),
              trailing: new Icon(Icons.settings),
              onTap: () {},
            ),
            new Divider(),
            new ListTile(
              title: new Text('Logout'),
              trailing: new Icon(Icons.exit_to_app),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            MyMenu(
                title: 'Nominations', icon: Icons.check, color: Colors.orange),
            MyMenu(
                title: 'Community', icon: Icons.comment, color: Colors.green),
            MyMenu(
                title: 'Fundraising',
                icon: Icons.attach_money,
                color: Colors.blue),
            MyMenu(
                title: 'Shop', icon: Icons.shopping_cart, color: Colors.purple),
            MyMenu(title: 'Support', icon: Icons.help, color: Colors.yellow),
            MyMenu(title: 'About', icon: Icons.info, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 70.0,
                color: color,
              ),
              Text(title, style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
