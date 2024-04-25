part of 'news_info_cubit.dart';

abstract class InfoNewsState extends Equatable {
  const InfoNewsState();

  @override
  List<Object> get props => [];
}

class LoadingState extends InfoNewsState {}

class LoadedVetState extends InfoNewsState {
  const LoadedVetState(this.items);
  final VetInfoModel? items;

  @override
  List<Object> get props => [items!];
}
class LoadedKatalogState extends InfoNewsState {
  const LoadedKatalogState(this.items);
  final List<KatalogModel>? items;

  @override
  List<Object> get props => [items!];
}

class UserFailureState extends InfoNewsState {
  const UserFailureState(this.message);
  final String? message;

  @override
  List<Object> get props => [message!];
}
