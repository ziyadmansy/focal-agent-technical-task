part of 'employees_bloc.dart';

@immutable
sealed class EmployeesEvent {}

final class EmployeesStarted extends EmployeesEvent {}

final class ITEmployeesLoadStarted extends EmployeesEvent {
  final int depId;

  ITEmployeesLoadStarted({required this.depId});
}

final class ITEmployeesLoadSuccess extends EmployeesEvent {}

final class ITEmployeesLoadFail extends EmployeesEvent {}

final class HREmployeesLoadStarted extends EmployeesEvent {
  final int depId;

  HREmployeesLoadStarted({required this.depId});
}

final class HREmployeesLoadSuccess extends EmployeesEvent {}

final class HREmployeesLoadFail extends EmployeesEvent {}
