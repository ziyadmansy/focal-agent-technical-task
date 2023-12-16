import 'package:bloc/bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/repositories/employees_repo_impl.dart';
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
    on<EmployeesEvent>((event, emit) async {
      print(event);
      if (event is EmployeesStarted) {
        emit(EmployeesLoadingState());
        await employeesRepo.getEmployeesByDepartmentId(1);
        emit(EmployeesSuccessState());
      }
    });
  }
}
