import 'package:flutter/material.dart';
import 'package:nexteons_final_test/utils/colorconstants/colorconstant.dart';

class Weblists extends StatelessWidget {
  const Weblists({super.key});

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
                  child: Column(
                    children: [
                      Text(
                        "Emergency kit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Text(
                          "We know migraines at school can be a real bummer, but you're a superhero for handling them like a champ! Your emergency kit is here to save the day and make you feel better.")
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Container(
                    color: colorconstant.White,
                    height: 50,
                    width: 50,
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
