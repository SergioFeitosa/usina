import 'dart:async';

import 'package:bloc/bloc.dart';

part 'pedra_event.dart';
part 'pedra_state.dart';

class PedraBloc extends Bloc<PedraEvent, PedraState> {
  PedraBloc() : super(PedraInitial()) {
    on<PedraFillPageEvent>(_fillPage);
  }

  FutureOr<void> _fillPage(
      PedraFillPageEvent event, Emitter<PedraState> emit) async {
    final attributes = ['Prato do dia', 'Prato Regional', 'Peixe', 'Porções'];
    await Future.delayed(const Duration(seconds: 1));
    emit(PedraStateData(attributes: attributes));
  }
}
