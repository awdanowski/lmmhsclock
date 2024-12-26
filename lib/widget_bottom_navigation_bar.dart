
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  void _openModal(BuildContext context, String schedule) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          height: 200,
          child: Center(
            child: Text(
              'Showing $schedule',
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '1st Lunch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '2nd Lunch',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          label: '3rd Lunch',
        ),
      ],
      onTap: (index) {
        // Handle button taps
        switch (index) {
          case 0:
            _openModal(context, 'Schedule 1');
            break;
          case 1:
            _openModal(context, 'Schedule 2');
            break;
          case 2:
            _openModal(context, 'Schedule 3');
            break;
        }
      },
    );
  }
}
