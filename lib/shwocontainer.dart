



import 'package:flutter/material.dart';

class shwocontainer extends StatefulWidget {
  const shwocontainer({super.key});

  @override
  State<shwocontainer> createState() => _shwocontainerState();
}

class _shwocontainerState extends State<shwocontainer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Sheet Dialog',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showContainer = false;

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    showContainer = true;
                  });
                },
                child: Icon(
                 Icons.ice_skating,
                  
                ),
              ),
              if (showContainer)
                Container(
                  width: 200,
                  height: 80,
                  color: Colors.yellow,
                  child: Center(
                    child: Text('New Container'),
                  ),
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showBottomSheet(context);
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}