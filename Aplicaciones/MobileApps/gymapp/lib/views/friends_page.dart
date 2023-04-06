import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({Key? key});

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  List<String> friendsList = []; // List to store the friends' names

  void _showAddFriendDialog(BuildContext context) {
    String newFriendName = ''; // Variable to store the input value

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Friend'),
          content: TextField(
            onChanged: (value) {
              setState(() {
                newFriendName = value; // Update the input value
              });
            },
            decoration: InputDecoration(
              labelText: 'Friend\'s Name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  friendsList.add(newFriendName); // Add the input value to the list
                });
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        centerTitle: true, // Center the title of the app bar
        backgroundColor: Colors.green, // Change the background color of the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ElevatedButton(
              onPressed: () {
                _showAddFriendDialog(context); // Show the add friend dialog
              },
              child: Text('Add Friend'), // Text to display on the button
            ),
            Expanded(
              child: ListView.builder(
                itemCount: friendsList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(friendsList[index]), // Display the friend's name
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}