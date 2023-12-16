import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/services/employees_service.dart';

part 'employees_event.dart';
part 'employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc(
    this.employeesService,
  ) : super(EmployeesInitialState()) {
    on<EmployeesInitialEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final EmployeesService employeesService;
}
