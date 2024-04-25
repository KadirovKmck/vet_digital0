part of 'info_cubit.dart';

class InfoState extends Equatable {
  const InfoState(this.status, {this.itesm});

  final FetchStatus status;
  final List<InfoMenu>? itesm;

  @override
  List<Object?> get props => [status, itesm];

  InfoState copyWith({FetchStatus? status, List<InfoMenu>? itesm}) {
    return InfoState(status ?? this.status, itesm: itesm ?? this.itesm);
  }
}
