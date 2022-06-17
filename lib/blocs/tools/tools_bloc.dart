import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:psbo_home_dan_mesinbaik/models/tools_model.dart';

part 'tools_event.dart';
part 'tools_state.dart';

class ToolsBloc extends Bloc<ToolsEvent, ToolsState> {
  ToolsBloc() : super(ToolsLoaded(tools: [])) {
    on<LoadTools>(_onLoadTools);
    on<AddTool>(_onAddTools);
    on<DeleteTool>(_onDeleteTools);
    on<UpdateTool>(_onUpdateTools);
  }

  void _onLoadTools(LoadTools event, Emitter<ToolsState> emit) {
    emit(ToolsLoaded(tools: event.tools));
  }

  void _onAddTools(AddTool event, Emitter<ToolsState> emit) {
    final state = this.state;
    if (state is ToolsLoaded) {
      emit(ToolsLoaded(
        tools: List.from(state.tools)..add(event.tool),
      ));
    }
  }

  void _onDeleteTools(DeleteTool event, Emitter<ToolsState> emit) {
    final state = this.state;
    if (state is ToolsLoaded) {
      List<ToolsModel> tools = state.tools.where((tool) {
        return tool.id != event.tool.id;
      }).toList();
      emit(
        ToolsLoaded(tools: tools),
      );
    }
  }

  void _onUpdateTools(UpdateTool event, Emitter<ToolsState> emit) {}
}
