import 'package:flutter/material.dart';

class SharedWidgets {
  static Widget buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  static Widget buildError() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error,
            color: Colors.red,
          ),
          SizedBox(
            height: 8,
          ),
          Text('Something went wrong, please try again'),
        ],
      ),
    );
  }

  static Widget buildEmpty() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error,
            color: Colors.red,
          ),
          SizedBox(
            height: 8,
          ),
          Text('No data found'),
        ],
      ),
    );
  }
}
