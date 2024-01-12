import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 57, 66, 128),
      body: SafeArea(

        child: Padding(
          padding: EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [ Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [ Text(
                  "Hello, User!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    ),
                ),
                      
                Text(
                  "How are you today?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),],
              ),
                  
              CircleAvatar(
                backgroundColor: Colors.orangeAccent,
                 radius: 18,
                child: Text("A"),
              ),],
            ),
            

            ],
          

          ),
        ),

      ),
    );
  }
}

