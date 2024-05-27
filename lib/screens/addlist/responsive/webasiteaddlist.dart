import 'package:flutter/material.dart';
import 'package:nexteons_final_test/utils/colorconstants/colorconstant.dart';
import 'package:nexteons_final_test/widgets/textformfield.dart';

class Webaddlists extends StatelessWidget {
  const Webaddlists({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorconstant.appbarcolor,
      ),
      body: Center(
        child: Container(
          height: 586,
          width: 657,
          color: colorconstant.lightblue,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 176,
                  width: 650,
                  color: colorconstant.darkblue,
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [Textformfield()],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
