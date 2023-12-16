part of 'employees_bloc.dart';

@immutable
sealed class EmployeesEvent {}

final class EmployeesInitialEvent extends EmployeesEvent {}
