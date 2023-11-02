part of 'empresa_bloc.dart';

sealed class EmpresaState {
  const EmpresaState();
}

final class EmpresaInitial extends EmpresaState {}

final class EmpresaStateData extends EmpresaState {
  final List<String> attributes;

  const EmpresaStateData({
    required this.attributes,
  });
}
