import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'agronegocio_event.dart';
part 'agronegocio_state.dart';

class AgronegocioBloc extends Bloc<AgronegocioEvent, AgronegocioState> {
  AgronegocioBloc() : super(AgronegocioInitial()) {
    on<AgronegocioFillPageEvent>(_fillPage);
  }

  FutureOr<void> _fillPage(
      AgronegocioFillPageEvent event, Emitter<AgronegocioState> emit) async {
    final attributes = ['Prato do dia', 'Prato Regional', 'Peixe', 'Porções'];
    await Future.delayed(const Duration(seconds: 1));
    emit(AgronegocioStateData(attributes: attributes));
  }
}
