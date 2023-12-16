import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:injectable/injectable.dart';

abstract interface class EmployeesLocalDataSource {
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id);
}

@LazySingleton(as: EmployeesLocalDataSource)
class EmployeesLocalDataSourceImpl implements EmployeesLocalDataSource {
  @override
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id) async {
    /// Gets employees by department ID from Local Storage
    /// (e.g. SQLite, Hive, etc.)
    await Future.delayed(const Duration(seconds: 1));

    return [
      EmployeeModel(
        id: 1,
        firstName: 'John',
        lastName: 'Doe',
        profilePictureUrl: 'https://i.pravatar.cc/150?img=1',
      ),
      EmployeeModel(
        id: 2,
        firstName: 'Jane',
        lastName: 'Smith',
        profilePictureUrl: 'https://i.pravatar.cc/150?img=2',
      ),
      EmployeeModel(
        id: 3,
        firstName: 'John',
        lastName: 'Doe',
        profilePictureUrl: 'https://i.pravatar.cc/150?img=3',
      ),
    ];
  }
}
