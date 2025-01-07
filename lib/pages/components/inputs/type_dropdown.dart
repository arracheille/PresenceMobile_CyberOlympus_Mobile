import 'package:flutter/material.dart';
import 'package:project_test/root/root.dart';

class DropdownType extends StatefulWidget {
  final List<String> option;

  const DropdownType({
    Key? key,
    required this.option,
  }) : super(key: key);

  @override
  _DropdownTypeState createState() => _DropdownTypeState();
}

class _DropdownTypeState extends State<DropdownType> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: darkblue(), // Warna dark blue
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedOption,
          isExpanded: true,
          dropdownColor: darkblue(), // Warna dropdown
          style: TextStyle(color: Colors.white), // Warna teks
          items: widget.option.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedOption = newValue;
            });
          },
          icon: Icon(Icons.arrow_drop_down, color: Colors.white), // Ikon putih
        ),
      ),
    );
  }
}
