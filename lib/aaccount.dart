import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Account());
}

class Account extends StatelessWidget {
  const Account({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF01579B),
        appBar: AppBar(
          title: const Text(
            "Account",
            style: TextStyle(
              color: Color(0xFF01579B),
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjusts size to fit content
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centers content horizontally
            children: <Widget>[
              // Image widget
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/woman.jpg',
                ),
              ),
              const SizedBox(
                  height: 30), // Adds space between the image and text
              // Text widget
              Text(
                'Menna Hussein',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 30, color: Colors.white),
              ),
              const SizedBox(
                  height: 10), // Adds space between the image and text
              // Text widget
              Text(
                'Software Developer',
                style: GoogleFonts.playfairDisplay(
                    fontSize: 15, color: Colors.white),
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.phone_outlined,
                          color: Color(0xFF01579B),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "      +201282839382",
                        hintStyle: TextStyle(color: Color(0xFF01579B)),
                        suffixIcon: Icon(
                          Icons.chevron_right,
                          color: Color(0xFF01579B),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(40.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xFF01579B),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "    mennahusssein20@gmail.com",
                    hintStyle: TextStyle(color: Color(0xFF01579B)),
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.chevron_right,
                      color: Color(0xFF01579B),
                    ),
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
