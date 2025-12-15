import 'package:flutter/material.dart';
import '../services/note_service.dart';

class AddNoteScreen extends StatefulWidget {
  @override
  _AddNoteScreenState createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  bool isFavorite = false;
  bool isPublic = false;

  final NoteService noteService = NoteService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Note')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: contentController,
              decoration: InputDecoration(labelText: 'Content'),
              maxLines: 4,
            ),
            SwitchListTile(
              title: Text('Favorite'),
              value: isFavorite,
              onChanged: (v) => setState(() => isFavorite = v),
            ),
            SwitchListTile(
              title: Text('Public Note'),
              value: isPublic,
              onChanged: (v) => setState(() => isPublic = v),
            ),
            ElevatedButton(
              child: Text('Save Note'),
              onPressed: () async {
                await noteService.addNote(
                  titleController.text,
                  contentController.text,
                  isFavorite,
                  isPublic,
                );
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
