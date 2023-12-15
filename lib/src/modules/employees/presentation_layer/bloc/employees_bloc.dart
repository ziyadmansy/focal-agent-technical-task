// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/services/employees_service.dart';

part 'employees_event.dart';
part 'employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc(
    this.employeesService,
  ) : super(EmployeesInitial()) {
    on<EmployeesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final EmployeesService employeesService;
}
