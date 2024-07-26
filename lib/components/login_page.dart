//
// import 'package:flutter/material.dart';
// import 'package:videoappdo/components/text_field_widgets.dart';
//
// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: RichText(text: const TextSpan(
//             text: 'ZE',style: TextStyle(
//             fontSize: 20,color: Colors.black
//         ),
//             children: [
//               TextSpan(
//                   text: 'GO',style: TextStyle(color: Colors.blue)
//               ),
//               TextSpan(
//                   text: 'CLOUD'
//               ),
//             ]
//         ),),
//       ),
//       backgroundColor: Colors.blueGrey[50],
//       body:const Padding(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(height: 50,),
//             TextFieldWidgets(
//                 controller: controller,
//                 hintText: 'Phone',
//                 icon: Icon(Icons.phone)
//             ),
//             SizedBox(height: 20,),
//             TextField(),
//             SizedBox(height: 30,)
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:videoappdo/components/sign_in_button.dart';
import 'package:videoappdo/components/text_field_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController phoneNum=TextEditingController();
  final TextEditingController password=TextEditingController();

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(text: const TextSpan(
            text: 'ZE',style: TextStyle(
            fontSize: 20,color: Colors.black
        ),
            children: [
              TextSpan(
                  text: 'GO',style: TextStyle(color: Colors.blue)
              ),
              TextSpan(
                  text: 'CLOUD'
              ),
            ]
        ),),
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50,),
            TextFieldWidgets(
                controller: phoneNum,
                hintText: 'Phone',
                icon: Icon(Icons.phone)
            ),
            const SizedBox(height: 20,),
            TextFieldWidgets(
                controller: password,
                hintText: 'Password',
                icon: Icon(Icons.lock_open)
            ),
           const SizedBox(height: 30,),
            SignInButton(userID: phoneNum,)
          ],
        ),
      ),
    );
  }
}
