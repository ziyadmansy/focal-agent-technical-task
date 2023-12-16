import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focal_agent_coding_task/src/core/shared/shared_widgets.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/manager/bloc/employees_bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/widgets/employee_card.dart';

class HrEmployeesPage extends StatefulWidget {
  const HrEmployeesPage({super.key});

  @override
  State<HrEmployeesPage> createState() => _HrEmployeesPageState();
}

class _HrEmployeesPageState extends State<HrEmployeesPage> {
  @override
  void initState() {
    super.initState();
    final employeesBloc =
        BlocProvider.of<EmployeesBloc>(context, listen: false);
    employeesBloc.add(HREmployeesLoadStarted(depId: 2));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeesBloc, EmployeesState>(
      builder: (context, state) {
        return switch (state) {
          EmployeesInitialState() => SharedWidgets.buildLoading(),
          EmployeesLoadingState() => SharedWidgets.buildLoading(),
          EmployeesFailState() => SharedWidgets.buildError(),
          EmployeesSuccessState() => RefreshIndicator(
              onRefresh: () async =>
                  BlocProvider.of<EmployeesBloc>(context).add(
                HREmployeesLoadStarted(depId: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: state.employees.length,
                  itemBuilder: (context, i) => EmployeeCard(
                    employeeModel: state.employees[i],
                  ),
                ),
              ),
            ),
        };
      },
    );
  }
}
