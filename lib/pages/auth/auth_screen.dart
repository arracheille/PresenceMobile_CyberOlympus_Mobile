// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project_test/controllers/register_controller.dart';

// class AuthScreen extends StatefulWidget {
//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   RegisterController registerController = Get.put(RegisterController());

//   var isLogin = false.obs;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(36),
//           child: Center(
//             child: Obx(
//               () => Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     child: Text(
//                       'WELCOME',
//                       style: TextStyle(
//                         fontSize: 30,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       MaterialButton(
//                         color: !isLogin.value ? Colors.white : Colors.amber,
//                         onPressed: () {
//                           isLogin.value = false;
//                         },
//                         child: Text('Register'),
//                       ),
//                       MaterialButton(
//                         color: !isLogin.value ? Colors.white : Colors.amber,
//                         onPressed: () {
//                           isLogin.value = true;
//                         },
//                         child: Text('Login'),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 80,
//                   ),
//                   isLogin.value ? loginWidget() : registerWidget()
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget registerWidget() {
//     return Column(
//       children: [
//         InputTextFieldWidget(registerController.nameController, 'name'),
//         SizedBox(
//           height: 20,
//         ),
//         InputTextFieldWidget(registerController.emailController, 'email'),
//         SizedBox(
//           height: 20,
//         ),
//         InputTextFieldWidget(registerController.passwordController, 'password'),
//         SizedBox(
//           height: 20,
//         ),
//         SubmitButton(
//           onPressed: () ->registerController.registerWithEmail(),
//           title: 'Register'
//         )
//       ],
//     );  
//   }
// }
