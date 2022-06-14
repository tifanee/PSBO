part of 'tools_bloc.dart';

abstract class ToolsState extends Equatable {
  const ToolsState();

  @override
  List<Object> get props => [];
}

class ToolsLoading extends ToolsState {}

class ToolsLoaded extends ToolsState {
  final List<ToolsModel> tools;

  const ToolsLoaded({this.tools = const <ToolsModel>[]});

  @override
  List<Object> get props => [tools];
}
