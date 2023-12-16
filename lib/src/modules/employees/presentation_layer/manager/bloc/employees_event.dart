part of 'employees_bloc.dart';

@immutable
sealed class EmployeesEvent {}

final class EmployeesStarted extends EmployeesEvent {}
