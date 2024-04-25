import 'package:dartz/dartz.dart';
import 'package:vet_digital/src/core/error/exception.dart';
import 'package:vet_digital/src/core/error/failure.dart';

import '../../../information/data/source/firestore.dart';
import '../../../vet/data/models/vet_info_model.dart';
import '../models/katalog_model.dart';

abstract class InfoRepo {
  Future<Either<Failure, List<KatalogModel>>> getKatalog({
    required String collectionName,
  });
  Future<Either<Failure, VetInfoModel>> getVet({
    required String collectionName,
  });
}

class InfoRepoImpl implements InfoRepo {
  InfoRepoImpl({required this.firestore});
  final FireStore firestore;

  @override
  Future<Either<Failure, VetInfoModel>> getVet({
    required String collectionName,
  }) async {
    try {
      final vetModel = await firestore.getVet(
        documentName: collectionName,
      );

      return Right(vetModel);
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<KatalogModel>>> getKatalog({
    required String collectionName,
  }) async {
    try {
      final katalogModel = await firestore.getKatalog(
        collectionName: collectionName,
      );

      return Right(katalogModel);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
