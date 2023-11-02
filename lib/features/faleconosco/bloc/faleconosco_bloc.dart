import 'dart:async';

import 'package:bloc/bloc.dart';

part 'faleconosco_event.dart';
part 'faleconosco_state.dart';

class FaleconoscoBloc extends Bloc<FaleconoscoEvent, FaleconoscoState> {
  FaleconoscoBloc() : super(FaleconoscoInitial()) {
    on<FaleconoscoFillPageEvent>(_fillPage);
  }

  FutureOr<void> _fillPage(
      FaleconoscoFillPageEvent event, Emitter<FaleconoscoState> emit) async {
    final attributes = ['Prato do dia', 'Prato Regional', 'Peixe', 'Porções'];
    await Future.delayed(const Duration(seconds: 1));
    emit(FaleconoscoStateData(attributes: attributes));
  }
}
