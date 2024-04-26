import 'package:flutter/material.dart';
import 'package:tp/helloPage.dart';
import 'package:tp/homePage.dart';

class drawerInterface extends StatefulWidget {
  const drawerInterface({super.key});

  @override
  State<drawerInterface> createState() => _drawerInterfaceState();
}

class _drawerInterfaceState extends State<drawerInterface> {
  int selectedIndex = 0; // Keeps track of the selected drawer item

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [HomePage(), helloPage()]; // List of screens

    return Scaffold(
      appBar: AppBar(
        title: const Text('TP 6 '),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.account_circle,
                  size: 120,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home page'),
              selected: selectedIndex == 0, // Highlight selected item
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                Navigator.pop(context);

              },
            ),
            ListTile(
              title: const Text('Item 2'),
              selected: selectedIndex == 1, // Highlight selected item
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
      body: IndexedStack( // Display the selected screen
        index: selectedIndex,
        children: screens,
      ),
    );
  }
}
