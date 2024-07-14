import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addUser(Map<String, dynamic> userData) async {
    try {
      await _db.collection('users').add(userData);
    } catch (e) {
      print(e);
    }
  }

  Future<DocumentSnapshot> getUser(String userId) async {
    try {
      DocumentSnapshot doc = await _db.collection('users').doc(userId).get();
      return doc;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
