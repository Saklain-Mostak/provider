// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//  static double fontSize = 17;



//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       appBar: AppBar(
//         title: const Text("Use of Provider"),
//         centerTitle: true,
//         backgroundColor: Colors.transparent,
//         //foregroundColor: const Color.fromARGB(255, 16, 1, 1),
//         shadowColor: Colors.black,
//         elevation: 0.00001,
//         // shape:const CircleBorder(side:BorderSide(color: Colors.red,width: 502) )))
//       ),
//       body: Center(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const SizedBox(
//               height: 40,
//             ),
//              const Text("Text Here",
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                 )),
//             const SizedBox(
//               height: 10,
//             ),
//              Text("This is Boom Boom",
//                 style: TextStyle(
//                   fontSize: fontSize,
//                   fontWeight: FontWeight.w100,
//                 )),
//             Slider(
//               value: fontSize,
//               onChanged: ( value) {
              
//               setState(() {
//                 fontSize=value;
//               });
//               },
//               max: 50,
//               min: 15,
//               label: "slider",
//               activeColor: Colors.blueGrey,
//               focusNode: FocusNode(debugLabel: AutofillHints.birthday),
//             ),
//             Text(fontSize.toInt().toString())
//           ],
//         ),
//       ),
//     ));
//   }
// }
