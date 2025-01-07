import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_test/api/api_service.dart';
import 'package:project_test/pages/components/buttons/button_small_blue.dart';
import 'package:project_test/pages/components/navprofile.dart';
import 'package:project_test/pages/components/text/heading_3.dart';
import 'package:project_test/pages/components/text/heading_5.dart';
import 'package:project_test/pages/components/text/text_small_10.dart';
import 'package:project_test/pages/modal/createworkspace.dart';
import 'package:project_test/pages/modal/joinworkspace.dart';
import 'package:project_test/pages/workspace/index.dart';
import 'package:project_test/root/root.dart';

class WorkspaceList extends StatefulWidget {
  const WorkspaceList({super.key});

  @override
  State<WorkspaceList> createState() => _WorkspaceListState();
}

class _WorkspaceListState extends State<WorkspaceList> {
  String name = '';
  List<dynamic> user = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getWorkspace();
    });
    super.initState();
  }

  Future<void> getWorkspace() async {
    final response = await ApiService.instance.getWorkspace();
    if (response != null && response["success"] == true) {
      // print(response["data"]);
      // final data = response["data"];
      final List<dynamic> data = response["data"];
      // print(data);
      setState(() {
        // name = data["current_page"].toString();
        user = data.map((nama) {
          return {
            'id': nama["id"],
            'title': nama["title"],
            'type': nama["type"],
            'description': nama["description"] ?? null,
            'user_id': nama["user_id"],
            'created_at': nama["created_at"],
            'updated_at': nama["updated_at"],
            'unique_code': nama["unique_code"],
            'email': nama["email"],
            'deleted_at': nama["deleted_at"] ?? null,
          };
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEE, d MMM yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);
    return Scaffold(
      backgroundColor: darkblue(),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Navbar(
              userName: 'Aqilla Rachel',
              formattedDate: formattedDate,
              formattedTime: formattedTime,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Heading3(text: 'Recent Workspaces'),
                Spacer(),
                BtnSmallBlue(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return JoinWorkspace();
                      },
                    );
                  },
                  text: 'Join',
                ),
                SizedBox(width: 10),
                BtnSmallBlue(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return CreateWorkspace();
                      },
                    );
                  },
                  text: 'Create',
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: user.length,
                itemBuilder: (context, index) {
                  final workspace = user[index];
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IndexWorkspace(id:workspace["id"]),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: blue(),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 35.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color: signature(),
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Center(
                                      child: Heading3(
                                        text: workspace["title"]
                                            .toString()
                                            .toUpperCase(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Heading3(text: workspace["title"]),
                                      TextSmall(
                                        text: 'By: ${workspace["email"]}',
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      gradient: gradient_blue(),
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        onTap: () {
                                          showModalBottomSheet(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return CreateWorkspace();
                                            },
                                          );
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0, vertical: 5.0),
                                          child: TextSmall(
                                            text: 'Share',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Heading5(text: workspace["type"] ?? "Unknown"),
                              SizedBox(height: 3),
                              Heading5(
                                  text: workspace["description"] ??
                                      "No description"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
