import 'package:flutter/material.dart';
import 'package:project_test/api/api_service.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  String name = '';
  List<dynamic> user = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getUser();
    });
    super.initState();
  }

  Future<void> getUser() async {
    final response = await ApiService.instance.getUser();
    if (response != null && response["success"] == true) {
      print(response["data"]);
      // final data = response["data"];
      final List<dynamic> data = response["data"]["data"];
      print(data);
      setState(() {
        // name = data["current_page"].toString();
        user = data.map((nama) {
          return {
            'id' : nama["id"],
            'name' : nama["name"],
            'email' : nama["email"],
          };
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff05162b),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                final datauser = user[index];
                return Text(
                  datauser["email"],style: TextStyle(
                    color: Colors.white,
                  ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
