import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'connection_state.dart';

class ConnectionCubit extends Cubit<ConnectionState> {
  ConnectionCubit() : super(ConnectionInitial());
}
