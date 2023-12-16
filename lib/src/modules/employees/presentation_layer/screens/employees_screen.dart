import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:focal_agent_coding_task/src/core/injection/injection.dart';
import 'package:focal_agent_coding_task/src/modules/employees/domain_layer/repositories/employees_repo.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/manager/bloc/employees_bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/widgets/hr_employees_page.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/widgets/it_employees_page.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'IT'),
    Tab(text: 'HR'),
  ];

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    return BlocProvider(
      create: (context) => EmployeesBloc(
        getIt.get<EmployeesRepo>(),
      )..add(EmployeesStarted()),
      child: BlocBuilder<EmployeesBloc, EmployeesState>(
        builder: (context, state) {
          return DefaultTabController(
            length: myTabs.length,
            child: Scaffold(
              appBar: AppBar(
                title: Text(locale!.appTitle),
                bottom: const TabBar(
                  tabs: myTabs,
                ),
              ),
              body: const TabBarView(
                children: [
                  ItEmployeesPage(),
                  HrEmployeesPage(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
