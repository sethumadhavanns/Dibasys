import 'package:dibasys/core/widgets/exit_alert_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Future<bool> showExitDialog(BuildContext context) async {
  final shouldExit = await showDialog<bool>(
    context: context,
    builder: (context) => const ExitDialogWidget(),
  );

  return shouldExit ?? false;
}
