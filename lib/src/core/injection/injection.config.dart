// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/employees/data_layer/data_sources/employees_data_source.dart'
    as _i3;
import '../../modules/employees/data_layer/data_sources/employees_local_data_source.dart'
    as _i5;
import '../../modules/employees/data_layer/data_sources/employees_remote_data_source.dart'
    as _i4;
import '../../modules/employees/data_layer/repositories/employees_repo_impl.dart'
    as _i7;
import '../../modules/employees/domain_layer/repositories/employees_repo.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.EmployeesDataSource>(
      () => _i4.EmployeesRemoteDataSourceImpl(),
      instanceName: 'remoteImpl',
    );
    gh.lazySingleton<_i3.EmployeesDataSource>(
      () => _i5.EmployeesLocalDataSourceImpl(),
      instanceName: 'localImpl',
    );
    gh.lazySingleton<_i6.EmployeesRepo>(() => _i7.EmployeesRepoImpl(
          httpEmployeesDataSource: gh<_i3.EmployeesDataSource>(),
          localEmployeesDataSource: gh<_i3.EmployeesDataSource>(),
          networkDataSource: gh<_i3.EmployeesDataSource>(),
        ));
    return this;
  }
}
