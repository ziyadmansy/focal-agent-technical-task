// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../modules/employees/data_layer/data_sources/local/employees_local_data_source.dart'
    as _i3;
import '../../modules/employees/data_layer/data_sources/remote/employees_remote_data_source.dart'
    as _i4;
import '../../modules/employees/data_layer/repositories/employees_repo_impl.dart'
    as _i7;
import '../../modules/employees/domain_layer/repositories/employees_repo.dart'
    as _i6;
import '../network/network_connectivity_service.dart' as _i5;

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
    gh.lazySingleton<_i3.EmployeesLocalDataSource>(
        () => _i3.EmployeesLocalDataSourceImpl());
    gh.lazySingleton<_i4.EmployeesRemoteDataSource>(
        () => _i4.EmployeesRemoteDataSourceImpl());
    gh.factory<_i5.NetworkConnectivityService>(
        () => _i5.NetworkConnectivityService());
    gh.lazySingleton<_i6.EmployeesRepo>(() => _i7.EmployeesRepoImpl(
          remoteEmployeesDataSource: gh<_i4.EmployeesRemoteDataSource>(),
          localEmployeesDataSource: gh<_i3.EmployeesLocalDataSource>(),
          networkDataSource: gh<_i5.NetworkConnectivityService>(),
        ));
    return this;
  }
}
