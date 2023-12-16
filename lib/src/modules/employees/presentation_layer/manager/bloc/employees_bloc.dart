import 'package:bloc/bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/repositories/employees_repo.dart';
import 'package:meta/meta.dart';

part 'employees_event.dart';
part 'employees_state.dart';

class EmployeesBloc extends Bloc<EmployeesEvent, EmployeesState> {
  EmployeesBloc(
    this.employeesRepo,
  ) : super(EmployeesInitialState()) {
    onHandler();
  }
  final EmployeesRepo employeesRepo;

  void onHandler() {
    on<EmployeesStarted>((event, emit) async {});

    on<ITEmployeesLoadStarted>((event, emit) async {
      try {
        emit(EmployeesLoadingState());
        final employees = await employeesRepo.getEmployeesByDepartmentId(
          event.depId,
        );
        emit(EmployeesSuccessState(employees: employees));
      } catch (e) {
        emit(EmployeesFailState());
      }
    });

    on<HREmployeesLoadStarted>((event, emit) async {
      try {
        emit(EmployeesLoadingState());
        final employees = await employeesRepo.getEmployeesByDepartmentId(
          event.depId,
        );
        emit(EmployeesSuccessState(employees: employees));
      } catch (e) {
        emit(EmployeesFailState());
      }
    });
  }
}
