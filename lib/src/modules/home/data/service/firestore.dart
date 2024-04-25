import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../information/data/models/katalog_model.dart';

abstract class FireStore {
  Future<List<KatalogModel>> getKatalog({required String collectionName});
}

class FireStoreImpl implements FireStore {
  FireStoreImpl({required this.firestoreDB});
  final FirebaseFirestore firestoreDB;

  @override
  Future<List<KatalogModel>> getKatalog({
    required String collectionName,
  }) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await firestoreDB.collection(collectionName).get();
    List<KatalogModel> katalogData = <KatalogModel>[];
    for (final doc in querySnapshot.docs) {
      KatalogModel katalogModel = KatalogModel.fromJson(doc.data());
      katalogData.add(katalogModel);
    }
    return katalogData;
  }
}
