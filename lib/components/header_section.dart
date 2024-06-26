import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Task List',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        SizedBox(height: 2),
        Text(
          '12 Tasks',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
