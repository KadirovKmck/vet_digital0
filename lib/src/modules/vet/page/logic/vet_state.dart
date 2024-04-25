part of 'vet_cubit.dart';

class VetState extends Equatable {
  const VetState(this.status, {this.item});

  final FetchStatus status;
  final Veterinar? item;

  @override
  List<Object?> get props => [status, item];

  VetState copyWith({FetchStatus? status, Veterinar? item}) {
    return VetState(status ?? this.status, item: item ?? this.item);
  }
}
