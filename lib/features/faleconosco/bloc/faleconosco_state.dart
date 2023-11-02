part of 'faleconosco_bloc.dart';

sealed class FaleconoscoState {
  const FaleconoscoState();
}

final class FaleconoscoInitial extends FaleconoscoState {}

final class FaleconoscoStateData extends FaleconoscoState {
  final List<String> attributes;

  const FaleconoscoStateData({
    required this.attributes,
  });
}
