part of 'pedra_bloc.dart';

sealed class PedraState {
  const PedraState();
}

final class PedraInitial extends PedraState {}

final class PedraStateData extends PedraState {
  final List<String> attributes;

  const PedraStateData({
    required this.attributes,
  });
}
