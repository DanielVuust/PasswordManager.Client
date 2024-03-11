import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:password_manager_client/models/dto_models/password.dart';

part 'create_vault_value_event.dart';
part 'create_vault_value_state.dart';

class CreateVaultValueBloc
    extends Bloc<CreateVaultValueEvent, CreateVaultValueState> {
  final _createVaultValueStateController =
      StreamController<CreateVaultValueState>.broadcast();

  StreamSink<CreateVaultValueState> get _currentVaultSink =>
      _createVaultValueStateController.sink;

  Stream<CreateVaultValueState> get createVaultValueState =>
      _createVaultValueStateController.stream;

  final _eventStreamController = StreamController<CreateVaultValueEvent>();

  StreamSink<CreateVaultValueEvent> get eventSink =>
      _eventStreamController.sink;

  Stream<CreateVaultValueEvent?> get eventStream =>
      _eventStreamController.stream;

  CreateVaultValueBloc() : super(CreateVaultValueInitial()) {
    _eventStreamController.stream.listen(_mapEventToState);
    _currentVaultSink.add(state);
  }
  Future<void> _mapEventToState(CreateVaultValueEvent event) async {
    await event.execute(state);
    _currentVaultSink.add(state);
  }
}
