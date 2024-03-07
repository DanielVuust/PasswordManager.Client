import 'package:bloc/bloc.dart';
import 'package:logger/src/logger.dart';
import 'package:meta/meta.dart';
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../utilities/logging/logger.dart';
import '../../../dto_models/password.dart';

part 'vault_event.dart';
part 'vault_state.dart';

class VaultBloc extends Bloc<VaultEvent, VaultState> {
  final _vaultStateController = StreamController<VaultState>.broadcast();

  StreamSink<VaultState> get _currentVaultSink => _vaultStateController.sink;

  Stream<VaultState> get vaultState => _vaultStateController.stream;

  final _eventStreamController = StreamController<VaultEvent>();

  StreamSink<VaultEvent> get eventSink => _eventStreamController.sink;

  Stream<VaultEvent?> get eventStream => _eventStreamController.stream;

  VaultBloc() : super(VaultInitial()) {
    _eventStreamController.stream.listen(_mapEventToState);
    _currentVaultSink.add(state);
  }
  Future<void> _mapEventToState(VaultEvent event) async {
    await event.execute(state);
    _currentVaultSink.add(state);
  }
}
