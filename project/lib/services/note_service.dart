import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NoteService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String uid = FirebaseAuth.instance.currentUser!.uid;

  Future<void> addNote(
      String title, String content, bool isFavorite, bool isPublic) async {
    await _db.collection('notes').add({
      'title': title,
      'content': content,
      'isFavorite': isFavorite,
      'isPublic': isPublic,
      'userId': uid,
      'createdAt': Timestamp.now(),
    });
  }

  Stream<QuerySnapshot> getMyNotes() {
    return _db
        .collection('notes')
        .where('userId', isEqualTo: uid)
        .snapshots();
  }

  Future<void> deleteNote(String docId) async {
    await _db.collection('notes').doc(docId).delete();
  }

  Future<void> toggleFavorite(String docId, bool value) async {
    await _db.collection('notes').doc(docId).update({
      'isFavorite': value,
    });
  }
}
  