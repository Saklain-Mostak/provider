import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/state_change/textsize.dart';
import 'package:provider_demo/widget/text_size_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FontSizeProvider>(
      create: (BuildContext context) { 
      
      return FontSizeProvider();
       },
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Use of Provider',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage1()
          // const MyHomePage(),
          ),
    );
  }
}
