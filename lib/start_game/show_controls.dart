import 'package:flutter/material.dart';

class ShowControls extends StatefulWidget {
  const ShowControls({Key? key}) : super(key: key);

  @override
  State<ShowControls> createState() => _ShowControlsState();
}

class _ShowControlsState extends State<ShowControls> {
  @override
  Widget build(BuildContext context) => Dialog(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DataTable(
            headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
            columnSpacing: 20,
            columns: const [
              DataColumn(
                label: Text('Action'),
              ),
              DataColumn(
                label: Text('Key'),
              ),
              DataColumn(
                label: Text('Gesture'),
              ),
            ],
            rows: const [
              DataRow(
                cells: [
                  DataCell(Text('Move right')),
                  DataCell(Text('→')),
                  DataCell(Text('Swipe right')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Move left')),
                  DataCell(Text('←')),
                  DataCell(Text('Swipe left')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Rotate right')),
                  DataCell(Text('D')),
                  DataCell(Text('Tap right')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Rotate left')),
                  DataCell(Text('A')),
                  DataCell(Text('Tap left')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Hold')),
                  DataCell(Text('↑')),
                  DataCell(Text('Swipe up')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Soft drop')),
                  DataCell(Text('↓')),
                  DataCell(Text('Hold and swipe down')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Hard drop')),
                  DataCell(Text('SPACE')),
                  DataCell(Text('Swipe down')),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text('Restart')),
                  DataCell(Text('ESC')),
                  DataCell(Text('')),
                ],
              ),
            ],
          ),
        ),
      );
}
