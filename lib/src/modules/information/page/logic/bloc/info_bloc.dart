// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:vet_digital/src/modules/home/data/repositories/info_repo.dart';

// part 'info_event.dart';
// part 'info_state.dart';

// class InfoBloc extends Bloc<InfoEvent, InfoState> {
//   InfoBloc({
//     required this.infoRepo,
//   }) : super(LoadingInfoState()) {
//     on<GetAboutAppEvent>(_getAboutApp);
//   }
//   final InfoRepo infoRepo;

//   Future<void> _getAboutApp(
//     GetAboutAppEvent event,
//     Emitter<InfoState> emit,
//   ) async {
//     emit(LoadingInfoState());

//     final infoAboutApp = await infoRepo.getAboutApp(
//       documentName: event.documentName,
//     );

//     infoAboutApp.fold(
//       (error) => emit(const UserFailureState('')),
//       (infoAboutApp) => emit(LoadedAboutAppState(infoAboutApp)),
//     );
//   }
// }
