import 'package:focal_agent_coding_task/src/modules/employees/data_layer/data_sources/employees_data_source.dart';
import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';
import 'package:injectable/injectable.dart';

@Named("remoteImpl")
@LazySingleton(as: EmployeesDataSource)
class EmployeesRemoteDataSourceImpl implements EmployeesDataSource {
  @override
  Future<List<EmployeeModel>> getEmployeesByDepartmentId(int id) async {
    Future.delayed(const Duration(seconds: 1));

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
