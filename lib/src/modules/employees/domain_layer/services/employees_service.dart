import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';

abstract class EmployeesService {
  Future<List<EmployeeModel>?> getEmployeesByDepartmentId(int id);
}
