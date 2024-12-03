import 'package:flutter/material.dart';
class MultiLineText extends StatelessWidget {
  final String lines;
  final double verticalPadding;
  final double horizontalPadding;
  final double lineSpacing;
  const MultiLineText({
    super.key, 
    required this.lines, 
    this.verticalPadding = 20, 
    this.horizontalPadding = 20,
    this.lineSpacing = 8
  });

  @override
  Widget build(BuildContext context) {
    final List<String> lines = this.lines.split('//');
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < lines.length; i++) ...[
            Text(lines[i].trim()),
            if (i < lines.length - 1)
              SizedBox(height: lineSpacing)
          ]
        ],
      ),
    );
  }
}

class PaddingLineText extends StatelessWidget {
  final String line;
  final double verticalPadding;
  final double horizontalPadding;
  final bool isBold;
  const PaddingLineText({super.key, required this.line, this.verticalPadding = 16, this.horizontalPadding = 8, this.isBold = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding),
      child: Text(
        line,
        style: TextStyle(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}