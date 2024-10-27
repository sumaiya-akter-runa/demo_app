import 'package:demo_app/recipe_details.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';


import 'constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF7F50),  // Coral
                Color(0xFF87CEFA),  // Light Sky Blue
                Color(0xFF00CED1),  // Dark Turquoise
                Color(0xFF9932CC),  // Dark Orchid
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: (){
              Fluttertoast.showToast(msg: recipe1Name);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe1Name,image: image1,description: description1)));//for going one page to another page
            },
            child: Card(
              elevation: 20,
              color: Colors.teal,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7F50), // Coral
                      Color(0xFF4B0082), // Indigo
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fastfood,
                      size: 100,
                      color: Colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe1Name,
                        style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold
                          ),
                    )
                  ],
                ),
              
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Fluttertoast.showToast(msg: recipe2Name);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe2Name,image: image2,description: description2)));//for going one page to another page
            },
            child: Card(
              elevation: 20,
              color: Colors.teal,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7F50), // Coral
                      Color(0xFF4B0082), // Indigo
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.rice_bowl,
                      size: 100,
                      color: Colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe2Name,
                      style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Fluttertoast.showToast(msg: recipe3Name);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe3Name,image: image3,description: description3)));//for going one page to another page
            },
            child: Card(
              elevation: 20,
              color: Colors.teal,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7F50), // Coral
                      Color(0xFF4B0082), // Indigo
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cake,
                      size: 100,
                      color: Colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe3Name,
                      style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Fluttertoast.showToast(msg: recipe4Name);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RecipeDetails(name: recipe4Name,image: image4,description: description4)));//for going one page to another page
            },
            child: Card(
              elevation: 20,
              color: Colors.teal,
              margin: EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF7F50), // Coral
                      Color(0xFF4B0082), // Indigo
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_pizza,
                      size: 100,
                      color: Colors.white,),
                    SizedBox(height: 10,),
                    Text(recipe4Name,
                      style: TextStyle(color: Colors.white, fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}

