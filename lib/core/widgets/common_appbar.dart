import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommomAppbar extends StatelessWidget {
  final void Function()? onPressed;
  const CommomAppbar({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(Icons.arrow_back_ios_rounded, color: Colors.white),
        ),
      ],
    );
  }
}
