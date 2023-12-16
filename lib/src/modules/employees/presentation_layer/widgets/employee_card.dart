// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:focal_agent_coding_task/src/modules/employees/data_layer/models/employee_model.dart';

class EmployeeCard extends StatelessWidget {
  final EmployeeModel employeeModel;
  const EmployeeCard({
    Key? key,
    required this.employeeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                employeeModel.profilePictureUrl,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '#${employeeModel.id}',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${employeeModel.firstName} ${employeeModel.lastName}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
