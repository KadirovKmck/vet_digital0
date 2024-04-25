import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../utils/enum/enums.dart';
import '../../data/darta.dart';


part 'vet_state.dart';

class VetCubit extends Cubit<VetState> {
  VetCubit() : super(const VetState(FetchStatus.initial));

  Future<void> fetData() async {
    emit(state.copyWith(status: FetchStatus.loading));

    await Future<void>.delayed(const Duration(seconds: 1));

    emit(state.copyWith(status: FetchStatus.success, item: vet1));
  }
}
