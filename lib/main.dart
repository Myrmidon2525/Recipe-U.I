import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp()); // Start the Flutter app
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeScreen(), // Set RecipeScreen as the home screen
    );
  }
}

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Noble Strawberry Pavlova")), // Center the app bar title
        backgroundColor: Colors.green,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(100.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Recipe Title
                  Text(
                    "Noble Strawberry Pavlova",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),

                  // Recipe Description
                  Text(
                    "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 16),

                  // Ratings Row
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star, color: Colors.red),
                      Icon(Icons.star_border, color: Colors.red),
                      SizedBox(width: 8),
                      Text("170 Reviews", style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Recipe Details Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RecipeDetail(icon: Icons.timer, label: "PREP", value: "25 min"),
                      RecipeDetail(icon: Icons.fastfood, label: "COOK", value: "1 hr"),
                      RecipeDetail(icon: Icons.group, label: "FEEDS", value: "4-6"),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              height: 350,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/pavlova.jpg'), // Replace with actual image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Widget for Recipe Details
class RecipeDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  RecipeDetail({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text(value, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}