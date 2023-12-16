import 'package:focal_agent_coding_task/src/core/network/network_connectivity_service.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_sources/local/employees_local_data_source.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_sources/remote/employees_remote_data_source.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/repositories/employees_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: EmployeesRepo)
class EmployeesRepoImpl implements EmployeesRepo {
  final EmployeesRemoteDataSource _httpEmployeesDataSource;
  final EmployeesLocalDataSource _localEmployeesDataSource;
  final NetworkConnectivityService _networkConnectivityService;

  EmployeesRepoImpl({
    required EmployeesRemoteDataSource remoteEmployeesDataSource,
    required EmployeesLocalDataSource localEmployeesDataSource,
    required NetworkConnectivityService networkDataSource,
  })  : _httpEmployeesDataSource = remoteEmployeesDataSource,
        _localEmployeesDataSource = localEmployeesDataSource,
        _networkConnectivityService = networkDataSource;

  @override
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id) async {
    print('getEmployeesByDepartmentId');
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

  @override
  Future<void> saveEmployeesByDepartmentId({
    required int id,
    required List<EmployeeModel> employees,
  }) {
    return _localEmployeesDataSource.saveEmployeesByDepartmentId(
      depId: id,
      employees: employees,
    );
  }
}
