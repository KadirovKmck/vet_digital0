import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../utils/enum/enums.dart';
import '../../data/data.dart';

part 'info_state.dart';

class InfoCubit extends Cubit<InfoState> {
  InfoCubit() : super(const InfoState(FetchStatus.initial));

  Future<void> fetData() async {
    emit(state.copyWith(status: FetchStatus.loading));

    await Future<void>.delayed(const Duration(seconds: 1));

    emit(state.copyWith(status: FetchStatus.success, itesm: infoMunuList));
  }
}
