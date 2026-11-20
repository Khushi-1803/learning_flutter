import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 40),

              // Profile
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(radius: 40),
                  SizedBox(width: 50),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    // child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   children: <Widget>[
                    //     Text(
                    //       "Khushi",
                    //       style: TextStyle(
                    //         fontSize: 24,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //     Text("Web Developer"),
                    //   ],
                    // ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Khushi",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Mobile App & Web Developer",
                          style: TextStyle(fontSize: 14),
                        ),
                        Text(
                          "Dizipay Innovations Private Limited",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 35),

              // Information
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Education
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 45,
                        child: Icon(Icons.school_outlined, size: 30),
                      ),
                      Expanded(
                        child: Text(
                          "B.Tech Computer Science - IIMT Engineering College (AKTU), 2022-2026",
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // Projects
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 45, child: Icon(Icons.work, size: 30)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Eduwave"),
                            Text("Student-Teacher Management Platform"),

                            SizedBox(height: 10),

                            Text("Buzzly"),
                            Text("Real-Time Chat Application"),

                            SizedBox(height: 10),

                            Text("The Art Hive"),
                            Text("Image Sharing and Social Platform"),

                            SizedBox(height: 10),

                            Text("Grand Basket"),
                            Text("E-Commerce Platform with Cart and Checkout"),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 25),

                  // Location
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 45,
                        child: Icon(Icons.location_city, size: 30),
                      ),
                      Expanded(child: Text("Meerut, Uttar Pradesh, India")),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Email
                  Row(
                    children: <Widget>[
                      SizedBox(width: 45, child: Icon(Icons.email, size: 30)),
                      Expanded(child: Text("khushi011504@gmail.com")),
                    ],
                  ),

                  SizedBox(height: 20),

                  // Mobile
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 45,
                        child: Icon(Icons.mobile_friendly, size: 30),
                      ),
                      Expanded(child: Text("+91 9027233823")),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              Text(
                "I am a passionate and creative Developer with experience in building responsive web applications and full-stack solutions. I have worked with technologies like React.js, Node.js, Express.js, and MongoDB. Currently, I am working as a Mobile App Developer at Dizipay, where I am learning and developing my skills in Flutter and Dart. I enjoy exploring new technologies, solving problems, and creating user-friendly digital experiences. I am always eager to learn, grow, and take on new challenges.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
