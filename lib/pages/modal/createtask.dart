import 'package:flutter/material.dart';
import 'package:project_test/root/root.dart';

class CreateTask extends StatefulWidget {
  @override
  _CreateTaskState createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  int? _selectedValue; // Untuk menyimpan nilai radio yang terpilih

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff163155),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Task',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Color(0xff05162b),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: TextStyle(fontSize: 13.0, color: Colors.white),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Choose Color',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              // Menambahkan 6 radio button dengan warna gradient yang berbeda
              _buildCustomRadioButton(1, 'Green', gradient_green()),
              SizedBox(height: 16),
              _buildCustomRadioButton(2, 'Blue', gradient_blue()),
              SizedBox(height: 16),
              _buildCustomRadioButton(3, 'Red', gradient_red()),
              SizedBox(height: 16),
              _buildCustomRadioButton(4, 'Orange', gradient_orange()),
              SizedBox(height: 16),
              _buildCustomRadioButton(5, 'Purple', gradient_purple()),
              SizedBox(height: 16),
              _buildCustomRadioButton(6, 'Pink', gradient_pink()),

              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: darkblue(),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Text(
                    'Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat custom radio button dengan gradient warna berbeda
  Widget _buildCustomRadioButton(
      int value, String text, LinearGradient gradient) {
    bool isSelected = _selectedValue == value;

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedValue = value;
        });
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(8.0),
          border: isSelected ? Border.all(color: Colors.white, width: 2) : null,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  // Gradient Functions
  LinearGradient gradient_green() {
    return LinearGradient(
      colors: [Color(0xff42E695), Color(0xff3BB2B8)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient gradient_blue() {
    return LinearGradient(
      colors: [Color(0xff6677cc), Color(0xff2929cc)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient gradient_red() {
    return LinearGradient(
      colors: [Color(0xffF54EA2), Color(0xffFF7676)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient gradient_orange() {
    return LinearGradient(
      colors: [Color(0xffF38181), Color(0xffFCE38A)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient gradient_purple() {
    return LinearGradient(
      colors: [Color(0xff737DFE), Color(0xffFFCAC9)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  LinearGradient gradient_pink() {
    return LinearGradient(
      colors: [Color(0xffFED1C7), Color(0xffFE8DC6)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }
}
