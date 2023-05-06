import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../models/colour_model.dart';
import '../../provider/colour_provider.dart';
import '../../provider/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 0;
  bool switchValue = false;
  bool isTrue = false;

  defaultProvider() {
    Provider.of<PaletteProvider>(context, listen: false)
        .changePalette(index: 0);
  }

  @override
  void initState() {
    super.initState();
    defaultProvider();
  }

  late Uint8List imageFile;
  @override
  Widget build(BuildContext context) {
    ColorPalette colorpalette = Provider.of<PaletteProvider>(context).palette;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:CupertinoColors.activeOrange,
          title: Text(
            "Colour Pallate App",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            )),
          ),
          leading: Switch(
            activeThumbImage: const AssetImage("assets/images/colouricon.png"),
            inactiveThumbColor: colorpalette.colorList[1],
            activeTrackColor: colorpalette.colorList[0],
            inactiveTrackColor: colorpalette.colorList[0],
            value: switchValue,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (val) {
              setState(() {
                switchValue = val;
              });
            },
          ),
          actions: [
            IconButton(
              onPressed: () async {
                Provider.of<ThemeProvider>(context, listen: false)
                    .changeTheme();
                isTrue = !isTrue;
              },
              icon: Icon(
                (isTrue == true)
                    ? Icons.light_mode_rounded
                    : Icons.dark_mode_rounded,
              ),
            )
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Container()),
          const Spacer(
            flex: 2,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: Container(
                    height: 420,
                    width: 420,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(220),
                        color: colorpalette.colorList[5],
                    ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          height: 350,
                          width:350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200)),
                          child: buildGestureDetector(colorpalette, context,
                              num: 4)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          height: 280,
                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(200)),
                          child: buildGestureDetector(colorpalette, context,
                              num: 3)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          height: 210,
                          width: 210,
                          decoration: BoxDecoration(
                              color: colorpalette.colorList[1],
                              borderRadius: BorderRadius.circular(200)),
                          child: buildGestureDetector(colorpalette, context,
                              num: 2)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200),
                      child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                              color: colorpalette.colorList[1],
                              borderRadius: BorderRadius.circular(200)),
                          child: buildGestureDetector(colorpalette, context,
                              num: 1)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(
                          ClipboardData(text: "${colorpalette.codeList[0]}"));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: const Text("Copied Color Code!"),
                          backgroundColor: (isTrue == true)
                              ? Colors.white
                              : Colors.grey.shade800,
                        ),
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: colorpalette.colorList[0],
                          borderRadius: BorderRadius.circular(200)),
                    ),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Transform.scale(
            scale: 1.2,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  isTrue ? Colors.white : Colors.grey.shade800,
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              onPressed: () {
                if (switchValue) {
                  Provider.of<PaletteProvider>(context, listen: false)
                      .changeColorPalette();
                } else {
                  (i == 14) ? i = 0 : i++;
                  Provider.of<PaletteProvider>(context, listen: false)
                      .changePalette(index: i);
                }
              },
              child: Text(
                "Change Color",
                style: TextStyle(color: isTrue ? Colors.black : Colors.white),
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Text(
            (switchValue == false)
                ? "Opacitywise Color Pallate"
                : "Random Color Pallate",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
  GestureDetector buildGestureDetector(
      ColorPalette colorpalette, BuildContext context,
      {required int num}) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: "${colorpalette.codeList[num]}"));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            content: const Text("Copied Color Code!"),
            backgroundColor:
                (isTrue == true) ? Colors.white : Colors.grey.shade800,
          ),
        );
      },
      child: Container(
        height: size.height * 0.1,
        width: size.width * 0.61,
        color: colorpalette.colorList[num],
      ),
    );
  }
  
}
