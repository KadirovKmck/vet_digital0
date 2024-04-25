// import 'package:cloud_firestore/cloud_firestore.dart';

// import '../models/vet_info_model.dart';

// abstract class FireStore {
//   Future<List<VetInfoModel>> getVet({required String collectionName});
// }

// class FireStoreImpl implements FireStore { 
//   FireStoreImpl({required this.firestoreDB});
//   final FirebaseFirestore firestoreDB;

//   @override
//   Future<List<VetInfoModel>> getVet({
//     required String collectionName,
//   }) async {
//     QuerySnapshot<Map<String, dynamic>> querySnapshot =
//         await firestoreDB.collection(collectionName).get();
//     List<VetInfoModel> katalogData = <VetInfoModel>[];
//     for (final doc in querySnapshot.docs) {
//       VetInfoModel katalogModel = VetInfoModel.fromJson(doc.data());
//       katalogData.add(katalogModel);
//     }
//     return katalogData;
//   }
// }
