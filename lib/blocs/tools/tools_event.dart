part of 'tools_bloc.dart';

abstract class ToolsEvent extends Equatable {
  const ToolsEvent();

  @override
  List<Object> get props => [];
}

class LoadTools extends ToolsEvent {
  final List<ToolsModel> tools;

  const LoadTools({this.tools = const <ToolsModel>[]});

  @override
  List<Object> get props => [tools];
}

class AddTool extends ToolsEvent {
  final ToolsModel tool;

  const AddTool({required this.tool});

  @override
  List<Object> get props => [tool];
}

class DeleteTool extends ToolsEvent {
  final ToolsModel tool;

  const DeleteTool({required this.tool});

  @override
  List<Object> get props => [tool];
}

class UpdateTool extends ToolsEvent {
  final ToolsModel tool;

  const UpdateTool({required this.tool});

  @override
  List<Object> get props => [tool];
}
