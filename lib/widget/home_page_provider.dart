// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_demo/state_change/state_change_.dart';
// import 'package:provider_demo/state_change/textsize.dart';

// class HomePage1 extends StatefulWidget {
//   const HomePage1({super.key});

//   @override
//   State<HomePage1> createState() => _HomePage1State();
// }

// class _HomePage1State extends State<HomePage1> {
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
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 height: 40,
//               ),
//               const Text("Text Here",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                   )),
//               const SizedBox(
//                 height: 10,
//               ),
//               Consumer<FontSizeProvider>(
//                 builder: (BuildContext context, newvalue, Widget? child) {
//                   return Text("This is Boom Boom",
//                       style: TextStyle(
//                         fontSize: newvalue.fontSize,
//                         fontWeight: FontWeight.w100,
//                       ));
//                 },
//               ),
//               Consumer<FontSizeProvider>(
//                 builder: (BuildContext context, newvalue2, Widget? child) {
//                   return Slider(
//                     value: newvalue2.fontSize.toDouble(),
//                     onChanged: (double newvalue) {
//                       newvalue2.fontSizeChange(newvalue);
//                     },
//                     max: 50,
//                     min: 15,
//                     label: "slider",
//                     activeColor: Colors.blueGrey,
//                     focusNode: FocusNode(debugLabel: AutofillHints.birthday),
//                   );
//                 },
//               ),

//               // Consumer<FontSizeProvider>(
//               //               builder: (BuildContext context, fontSizeProvider,
//               //                   Widget? child) {
//               //                 return Slider(

//               //                   inactiveColor: Colors.blue,
//               //                   value: fontSizeProvider.textSize,
//               //                   min: 10,
//               //                   max: 30,
//               //                   onChanged: (newValue) {
//               //                     fontSizeProvider.setTextSize(newValue);
//               //                   },
//               //                 );
//               //               },

//               //             ),

//               Consumer<FontSizeProvider>(
//                   builder: (BuildContext context, newvalue3, Widget? child) {
//                 return Text(newvalue3.fontSize.toString());
//               }),

//               Consumer<FontSizeProvider>(
//                 builder: (BuildContext context, value60, Widget? child) {
//                   return Slider(
//                       min: 1,
//                       max: 40,
//                       value: value60.fontSize,
//                       onChanged: (value) {
//                         value60.fontSizeChange(value);
//                       });
//                 },
//               )
//             ]),
//       ),
//     ));
//   }
// }
