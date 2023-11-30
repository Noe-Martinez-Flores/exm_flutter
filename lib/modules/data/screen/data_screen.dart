import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dynamic rawArguments = ModalRoute.of(context)!.settings.arguments;
    final Map<String, dynamic> arguments =
        (rawArguments as Map<String, dynamic> ?? {});
    final name = arguments['name'] ?? 'PI PI PI PI';

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
    );
  }
}
