part of 'agronegocio_bloc.dart';

@immutable
sealed class AgronegocioState {
  const AgronegocioState();
}

final class AgronegocioInitial extends AgronegocioState {}

final class AgronegocioStateData extends AgronegocioState {
  final List<String> attributes;

  const AgronegocioStateData({
    required this.attributes,
  });
}
