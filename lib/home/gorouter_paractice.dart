import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GorouterParactice extends StatelessWidget {
  const GorouterParactice({super.key});

  static String goRoutes = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/details');
              },
              child: Text('Go to Details'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.go('/profile/42'); // userId = 42
              },
              child: Text('Go to Profile ID: 42'),
            ),
          ],
        ),
      ),
    );
  }
}
