

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
class RecipeDetails extends StatefulWidget {
  final String name;
  final String image;
  final String description;

  const RecipeDetails({super.key,required this.name,required this.image,required this.description});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.sizeOf(context).width;
    var fontSize = screenWidth > 600 ? 28.0 : 18.0;


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9932CC),
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        title: Text("Recipe Details",
          style: GoogleFonts.acme(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/${widget.image}",
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height / 3,
                    fit: BoxFit.fitWidth,
                  ),
                  //  shows according to the screen sizeof the device



                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: MediaQuery.sizeOf(context).width,
                    color: Color(0xFF9932CC),
                    child: Center(
                      child: Text(
                        widget.name,textAlign: TextAlign.center,
                        style: GoogleFonts.acme(
                            fontSize: 20,
                            color: Colors.black
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Flexible (
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(widget.description,
                        style:GoogleFonts.acme(
                            fontSize: 16
                        ) ,),
                    ),
                  )
                ],
              )


            ],
          )

        ],
      ),
    );
  }
}
