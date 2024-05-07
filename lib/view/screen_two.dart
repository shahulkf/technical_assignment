// import 'package:flutter/material.dart';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
// import 'package:technical_assignment/constants/appstrings/appstrings.dart';
// import 'package:technical_assignment/utils/responsive/responsive.dart';

// class ScreenTwo extends StatefulWidget {
//   const ScreenTwo({super.key});

//   @override
//   State<ScreenTwo> createState() => _ScreenTwoState();
// }

// class _ScreenTwoState extends State<ScreenTwo> {
//   @override
//   void initState() {
//     super.initState();
//     secureScreen();
//   }

//   Future<void> secureScreen() async {
//     if (Theme.of(context).platform == TargetPlatform.android) {
//       await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
//     }
//   }

//   // @override
//   // void dispose() {
//   //   FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     setState(() {
//       secureScreen();
//     });
//     return Scaffold(
//         appBar: AppBar(
//           actions: const [Icon(Icons.menu)],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(25.0),
//           child: Column(
//             children: [
//               const Text(
//                 'Bank balance',
//                 style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: Responsive.height * 0.05,
//               ),
//               const Text(
//                 '${AppStrings.rupee} 2,500',
//                 style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
//               ),
//               SizedBox(
//                 height: Responsive.height * 0.02,
//               ),
//               const Text(
//                 'Savings Account',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               ),
//               const Text(
//                 'Canara Bank 5759',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:technical_assignment/constants/appstrings/appstrings.dart';
import 'package:technical_assignment/utils/responsive/responsive.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  void initState() {
    super.initState();
    // Don't call secureScreen here
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    secureScreen(); // Call secureScreen here
  }

  Future<void> secureScreen() async {
    if (Theme.of(context).platform == TargetPlatform.android) {
      await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    }
  }

  @override
  void dispose() {
    FlutterWindowManager.clearFlags(FlutterWindowManager.FLAG_SECURE);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.menu)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              'Bank balance',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Responsive.height * 0.05,
            ),
            const Text(
              '${AppStrings.rupee} 2,500',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Responsive.height * 0.02,
            ),
            const Text(
              'Savings Account',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const Text(
              'Canara Bank 5759',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
