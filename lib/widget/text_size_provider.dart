import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/state_change/textsize.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text(
                  "TEXT",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,),
                ),
                Consumer<FontSizeProvider>(
                  builder:
                      (BuildContext context, fontSizeProvider, Widget? child) {
                    return Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: fontSizeProvider.textSize,
                          color: fontSizeProvider.colorprimary),
                    );
                  },
                ),
                Consumer<FontSizeProvider>(
                  builder:
                      (BuildContext context, fontSizeProvider, Widget? child) {
                    return Slider(
                      inactiveColor:fontSizeProvider.colorprimary,
                      value: fontSizeProvider.textSize,
                      max: 30,
                      min: 10,
                      onChanged: (newValue) {
                        fontSizeProvider.setTextSize(newValue);
                        //fontSizeProvider.setColor(context);
                      },
                    );
                  },
                ),

                Consumer<FontSizeProvider>(
                  builder: (BuildContext context, FontSizeProvider value,
                      Widget? child) {
                    return Text(value.textSize.toInt().toString());
                  },
                ),
                   Consumer<FontSizeProvider>(
                  builder: (BuildContext context, FontSizeProvider value,
                      Widget? child) {
                    return Text(value.colorprimary.toString());
                  },
                ),

                ElevatedButton(
                    onPressed: () {
                      showColorPicker(context);
                    },
                    child: const Text("Pick Color")),

                // Consumer<FontSizeProvider>(
                //   builder: (BuildContext context, themeProvider,
                //       Widget? child) {
                //     return Text(
                //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
                //       , style: TextStyle(fontWeight: FontWeight.bold,
                //         color: themeProvider.color_primary),);
                //   },)
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showColorPicker(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Consumer<FontSizeProvider>(
                builder: (BuildContext context, themProvider, Widget? child) {
                  return ColorPicker(
                      pickerColor: themProvider.colorprimary,
                      onColorChanged: (color) {
                        themProvider.setColor(color);
                      });
                },
              ),
            ));
  }
}
