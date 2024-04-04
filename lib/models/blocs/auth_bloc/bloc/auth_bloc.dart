import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final _groupStateController = StreamController<AuthState>.broadcast();

  StreamSink<AuthState> get _currentGroupSink => 
  _groupStateController.sink;

  Stream<AuthState> get authState => 
  _groupStateController.stream;

  final _eventStreamController = StreamController<AuthEvent>();

  StreamSink<AuthEvent> get eventSink => _eventStreamController.sink;

  Stream<AuthEvent?> get eventStream => _eventStreamController.stream;


  AuthBloc() : super(AuthInitial()) {
    _eventStreamController.stream.listen(_mapEventToState);
    _currentGroupSink.add(state);
  }
  Future<void> _mapEventToState(AuthEvent event) async {
    await event.execute(state);
    _currentGroupSink.add(state);
  }
}

