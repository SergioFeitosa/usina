part of 'mineral_bloc.dart';

sealed class MineralState {
  const MineralState();
}

final class MineralInitial extends MineralState {}

final class MineralStateData extends MineralState {
  final List<String> attributes;

  const MineralStateData({
    required this.attributes,
  });
}
