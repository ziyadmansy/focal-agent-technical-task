part of 'employees_bloc.dart';

@immutable
sealed class EmployeesState {}

final class EmployeesInitialState extends EmployeesState {}

final class EmployeesLoadingState extends EmployeesState {}

final class EmployeesSuccessState extends EmployeesState {
  final List<EmployeeModel> employees;

  EmployeesSuccessState({required this.employees});
}

final class EmployeesFailState extends EmployeesState {}
