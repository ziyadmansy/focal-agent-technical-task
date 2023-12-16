import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_sources/employees_data_source.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/repositories/employees_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EmployeesRepo)
class EmployeesRepoImpl implements EmployeesRepo {
  final EmployeesDataSource _httpEmployeesDataSource;
  final EmployeesDataSource _localEmployeesDataSource;
  final EmployeesDataSource _networkDataSource;

  EmployeesRepoImpl({
    required EmployeesDataSource httpEmployeesDataSource,
    required EmployeesDataSource localEmployeesDataSource,
    required EmployeesDataSource networkDataSource,
  })  : _httpEmployeesDataSource = httpEmployeesDataSource,
        _localEmployeesDataSource = localEmployeesDataSource,
        _networkDataSource = networkDataSource;

  @override
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id) async {
    return await _httpEmployeesDataSource.getEmployeesByDepartmentId(id);
  }
}
