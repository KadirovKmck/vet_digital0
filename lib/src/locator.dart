import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:vet_digital/src/modules/vet/page/logic/cubit/news_info_cubit.dart';
import 'modules/information/data/data.dart';
import 'modules/information/data/source/firestore.dart';
import 'modules/news/page/logic/cubit/news_info_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl
    // repo
    ..registerLazySingleton<InfoRepo>(
      () => InfoRepoImpl(
        firestore: sl<FireStore>(),
      ),
    )

    // cubit
    ..registerLazySingleton(
      () => InfoAboutAppCubit(
        infoRepo: sl<InfoRepo>(),
      ),
    )
    ..registerLazySingleton(
      () => InfoNewsCubit(
        infoRepo: sl<InfoRepo>(),
      ),
    )

    // service
    ..registerLazySingleton<FireStore>(
      () => FireStoreImpl(
        firestoreDB: sl(),
      ),
    );

  // extarnal
  final firebase = await Firebase.initializeApp();
  sl.registerLazySingleton(() => firebase);

  final firestoreDB = FirebaseFirestore.instance;
  sl.registerLazySingleton(() => firestoreDB);
}
