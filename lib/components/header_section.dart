import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
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
      ),
    );
  }
}
