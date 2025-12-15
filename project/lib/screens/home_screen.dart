import 'package:flutter/material.dart';
import 'add_note_screen.dart';
import 'notes_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Notes')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              child: Text('Create Note'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddNoteScreen()));
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('View Notes'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotesScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
