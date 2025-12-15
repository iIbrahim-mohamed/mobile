import 'package:flutter/material.dart';
import '../services/note_service.dart';

class NotesScreen extends StatelessWidget {
  final NoteService noteService = NoteService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Notes')),
      body: StreamBuilder(
        stream: noteService.getMyNotes(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final notes = snapshot.data!.docs;

          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              final note = notes[index];

              return ListTile(
                title: Text(note['title']),
                subtitle: Text(note['content']),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        note['isFavorite']
                            ? Icons.favorite
                            : Icons.favorite_border,
                      ),
                      onPressed: () {
                        noteService.toggleFavorite(
                            note.id, !note['isFavorite']);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        noteService.deleteNote(note.id);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
