import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:convert';
class LatexTable extends StatefulWidget {
    final String inputString;
    final double fontSize;
    final Color tableColor;
  const LatexTable({super.key, required this.inputString, this.fontSize = 16, required this.tableColor});

  @override
  State<LatexTable> createState() => _LatexTableState();
}

class _LatexTableState extends State<LatexTable> {
  @override
  Widget build(BuildContext context) {
    final List<List<String>> result = widget.inputString.split("//").map((e) => e.split("&")).toList();
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Table(
        border: TableBorder.all(
        color: widget.tableColor,
        width: 1.5,
        borderRadius: BorderRadius.circular(8),
      ),
      columnWidths: const {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: result.map((row) {
        return TableRow(
          children: row.map((cell) {
            final String trimmedCell = cell.trim() == "1" ? "" : cell.trim();
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
              alignment: Alignment.center,
              child: Text(
                trimmedCell,
                style: TextStyle(fontSize: widget.fontSize),
              ),
            );
          }).toList(),
        );
        }).toList(),
      ),
    );
  }
}   

