import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../vet/data/models/vet_info_model.dart';
import '../models/katalog_model.dart';

abstract class FireStore {
  Future<List<KatalogModel>> getKatalog({required String collectionName});
  Future<VetInfoModel> getVet({required String documentName});
}
 
class FireStoreImpl implements FireStore {
  FireStoreImpl({required this.firestoreDB});
  final FirebaseFirestore firestoreDB;

 @override
  Future<VetInfoModel> getVet({
    required String documentName,
  }) async {
    final DocumentSnapshot aboutApp =
        await firestoreDB.collection('vet').doc(documentName).get();
    if (aboutApp.exists) {
      final aboutAppMap = aboutApp.data() as Map<String, dynamic>?;
      final aboutAppObject = VetInfoModel.fromJson(aboutAppMap!);
      return aboutAppObject;
    } else {
      return VetInfoModel();
    }
  }

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
