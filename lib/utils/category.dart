import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final IconImagePath;
  final String CategoryName;

  CategoryCard({
    this.IconImagePath,
    required this.CategoryName,
})

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27.0),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.deepPurple[400],
        ),
        color: Colors.purple[400],
        child: Row(
          children: [
            Image.asset('assets/', height: 45.0),
            SizedBox(width: 10.0),
            const Text('Dentist'),
          ],
        ),
      ),
    );
  }
}
