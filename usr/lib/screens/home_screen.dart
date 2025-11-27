import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Learning Adventure'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: <Widget>[
          _buildCategoryCard(
            context,
            title: 'Lessons',
            icon: Icons.book,
            color: Colors.blue,
            routeName: '/lessons',
          ),
          _buildCategoryCard(
            context,
            title: 'Games',
            icon: Icons.games,
            color: Colors.green,
            routeName: '/games',
          ),
          _buildCategoryCard(
            context,
            title: 'Quizzes',
            icon: Icons.question_answer,
            color: Colors.orange,
            routeName: '/quizzes',
          ),
          _buildCategoryCard(
            context,
            title: 'Profile',
            icon: Icons.person,
            color: Colors.purple,
            routeName: '/profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context,
      {required String title,
      required IconData icon,
      required Color color,
      required String routeName}) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon, size: 50.0, color: Colors.white),
              const SizedBox(height: 10.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
