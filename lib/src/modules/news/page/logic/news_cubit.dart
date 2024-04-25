import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../utils/utils.dart';
import '../../data/data.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(const NewsState(FetchStatus.initial));
  Future<void> fetData() async {
    emit(state.copyWith(status: FetchStatus.loading));
    await Future<void>.delayed(const Duration(seconds: 1));
    emit(state.copyWith(status: FetchStatus.success, items: newslist));
  }
}
