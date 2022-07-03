import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Function changeTheme;

  Test(this.changeTheme);
  @override
  State<StatefulWidget> createState() {
    return Test2();
  }
}

class Test2 extends State<Test> {
  int navigationIndex = 0;
  String content = 'Home';
  bool DarkTheme = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationIndex,
        onTap: (i) {
          navigationIndex = i;

          switch (i) {
            case 0:
              content = 'Home';
              break;
            case 1:
              content = 'Favorite';
              break;
            case 2:
              content = 'Profile';
          }

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("name"),
              accountEmail: Text("Email@email.me"),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    content = "Settings";
                    Navigator.of(context).pop();
                    setState(() {});
                  },
                  title: Text("Settings"),
                  leading: Icon(Icons.settings),
                  subtitle: Text("Open settings"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () {
                    content = "About";
                    Navigator.of(context).pop();
                    setState(() {});
                  },
                  title: Text("About"),
                  leading: Icon(Icons.details),
                  subtitle: Text("Open About us"),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  onTap: () {
                    content = "Profile";
                    Navigator.of(context).pop();

                    setState(() {});
                  },
                  title: Text("Profile"),
                  leading: Icon(Icons.person),
                  subtitle: Text("Open Your Profile"),
                  trailing: Icon(Icons.arrow_right),
                ),
              ],
            ),
          ],
        ),
      ),
      // backgroundColor: bg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(DarkTheme ? 'ON' : 'OFF'),
              Switch(
                  value: DarkTheme,
                  onChanged: (isON) {
                    DarkTheme = !DarkTheme;
                    widget.changeTheme(isON);

                    setState(() {});
                  })
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // bg = (bg == Colors.black ? Colors.white : Colors.black);
              setState(() {});
            },
            child: Text("Change $content Color!"),
          ),
        ],
      ),
    );
  }
}
