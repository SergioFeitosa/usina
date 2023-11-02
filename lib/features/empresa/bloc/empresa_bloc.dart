import 'dart:async';

import 'package:bloc/bloc.dart';

part 'empresa_event.dart';
part 'empresa_state.dart';

class EmpresaBloc extends Bloc<EmpresaEvent, EmpresaState> {
  EmpresaBloc() : super(EmpresaInitial()) {
    on<EmpresaFillPageEvent>(_fillPage);
  }

  FutureOr<void> _fillPage(
      EmpresaFillPageEvent event, Emitter<EmpresaState> emit) async {
    final attributes = ['Prato do dia', 'Prato Regional', 'Peixe', 'Porções'];
    await Future.delayed(const Duration(seconds: 1));
    emit(EmpresaStateData(attributes: attributes));
  }
}
