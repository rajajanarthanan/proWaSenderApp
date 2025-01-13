import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'core_event.dart';
part 'core_state.dart';
part 'core_bloc.freezed.dart';

class CoreBloc extends Bloc<CoreEvent, CoreState> {
  CoreBloc() : super(_Initial()) {
    on<CoreEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
