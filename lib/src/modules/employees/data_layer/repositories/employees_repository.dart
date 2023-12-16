import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/services/employees_service.dart';

class EmployeesRepository {
  final EmployeesDataSource _httpEmployeesDataSource;
  final EmployeesDataSource _localEmployeesDataSource;
  final EmployeesDataSource _networkDataSource;

  EmployeesRepository({
    required EmployeesDataSource httpEmployeesDataSource,
    required EmployeesDataSource localEmployeesDataSource,
    required EmployeesDataSource networkDataSource,
  })  : _httpEmployeesDataSource = httpEmployeesDataSource,
        _localEmployeesDataSource = localEmployeesDataSource,
        _networkDataSource = networkDataSource;

  Future<List<EmployeeModel>?> getEmployeesByDepartmentId(int id) async {
    return await _httpEmployeesDataSource.getEmployeesByDepartmentId(id);
  }
}
