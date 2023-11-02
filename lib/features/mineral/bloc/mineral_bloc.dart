import 'dart:async';

import 'package:bloc/bloc.dart';

part 'mineral_event.dart';
part 'mineral_state.dart';

class MineralBloc extends Bloc<MineralEvent, MineralState> {
  MineralBloc() : super(MineralInitial()) {
    on<MineralFillPageEvent>(_fillPage);
  }

  FutureOr<void> _fillPage(
      MineralFillPageEvent event, Emitter<MineralState> emit) async {
    final attributes = ['Prato do dia', 'Prato Regional', 'Peixe', 'Porções'];
    await Future.delayed(const Duration(seconds: 1));
    emit(MineralStateData(attributes: attributes));
  }
}
