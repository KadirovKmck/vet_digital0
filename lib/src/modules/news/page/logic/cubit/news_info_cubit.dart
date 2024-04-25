import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../information/data/data.dart';
import '../../../../information/data/models/katalog_model.dart';
import '../../../../vet/data/models/vet_info_model.dart';
part 'news_info_state.dart';

class InfoNewsCubit extends Cubit<InfoNewsState> {
  InfoNewsCubit({
    required this.infoRepo,
  }) : super(LoadingState());
  final InfoRepo infoRepo;

  Future<void> getKatalog(String collectionName) async {
    emit(LoadingState());

    final infoKatalog =
        await infoRepo.getKatalog(collectionName: collectionName);

    infoKatalog.fold(
      (error) => emit(const UserFailureState('')),
      (infoAboutApp) => emit(LoadedKatalogState(infoAboutApp)),
    );
  }

  Future<void> getVetInfo(String collectionName) async {
    emit(LoadingState());

    final infoKatalog = await infoRepo.getVet(collectionName: collectionName);

    infoKatalog.fold(
      (error) => emit(const UserFailureState('')),
      (infoAboutApp) => emit(LoadedVetState(infoAboutApp)),
    );
  }
}
