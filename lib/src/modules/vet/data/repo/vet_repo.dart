// import 'package:dartz/dartz.dart';
// import 'package:vet_digital/src/core/error/exception.dart';
// import 'package:vet_digital/src/core/error/failure.dart';

// import '../models/vet_info_model.dart';
// import '../source/vet_remote_source.dart';

// abstract class VetRepo {
  
//   Future<Either<Failure, List<VetInfoModel>>> getVet({
//     required String collectionName,
//   });
// }

// class InfoRepoImpl implements VetRepo {
//   InfoRepoImpl({required this.firestore});
//   final FireStore firestore;

//   @override
//   Future<Either<Failure, List<VetInfoModel>>> getVet({
//     required String collectionName,
//   }) async {
//     try {
//       final vetModel = await firestore.getVet(
//         collectionName: collectionName,
//       );

//       return Right(vetModel);
//     } on ServerException {
//       return Left(ServerFailure());
//     }
//   }
// }
