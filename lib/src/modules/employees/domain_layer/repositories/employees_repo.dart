import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';

abstract interface class EmployeesRepo {
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id);
}
