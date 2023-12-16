import 'package:bloc/bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/repositories/employees_repository.dart';
import 'package:meta/meta.dart';

part 'employees_event.dart';
part 'employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc(
    this.employeesRepo,
  ) : super(EmployeesInitialState()) {
    on<EmployeesInitialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final EmployeesRepository employeesRepo;
}
