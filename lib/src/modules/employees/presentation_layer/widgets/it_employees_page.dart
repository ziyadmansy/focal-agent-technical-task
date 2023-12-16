import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:focal_agent_coding_task/src/core/shared/shared_widgets.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/manager/bloc/employees_bloc.dart';
import 'package:focal_agent_coding_task/src/modules/employees/presentation_layer/widgets/employee_card.dart';

class ItEmployeesPage extends StatefulWidget {
  const ItEmployeesPage({super.key});

  @override
  State<ItEmployeesPage> createState() => _ItEmployeesPageState();
}

class _ItEmployeesPageState extends State<ItEmployeesPage> {
  @override
  void initState() {
    super.initState();
    final employeesBloc =
        BlocProvider.of<EmployeesBloc>(context, listen: false);
    employeesBloc.add(ITEmployeesLoadStarted(depId: 1));
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
                ITEmployeesLoadStarted(depId: 1),
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
