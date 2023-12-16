import 'package:focal_agent_coding_task/src/core/network/network_connectivity_service.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_sources/employees_data_source.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/repositories/employees_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EmployeesRepo)
class EmployeesRepoImpl implements EmployeesRepo {
  final EmployeesDataSource _httpEmployeesDataSource;
  final EmployeesDataSource _localEmployeesDataSource;
  final NetworkConnectivityService _networkConnectivityService;

  EmployeesRepoImpl({
    required EmployeesDataSource httpEmployeesDataSource,
    required EmployeesDataSource localEmployeesDataSource,
    required NetworkConnectivityService networkDataSource,
  })  : _httpEmployeesDataSource = httpEmployeesDataSource,
        _localEmployeesDataSource = localEmployeesDataSource,
        _networkConnectivityService = networkDataSource;

  @override
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id) async {
    if (await _networkConnectivityService.isConnected()) {
      /// Gets the employees from the remote data source
      /// if the device is connected to the internet.
      return await _httpEmployeesDataSource.getEmployeesByDepartmentId(id);
    } else {
      /// Gets the employees from the local data source
      /// if the device is not connected to the internet.
      return await _localEmployeesDataSource.getEmployeesByDepartmentId(id);
    }
  }
}
