import 'package:flutter/material.dart';

class ComboCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const ComboCard(this.title, this.price, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath, height: 100, width: 100, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  children: [
                    Text(price, style: const TextStyle(color: Colors.orange)),
                    const VerticalDivider(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: Colors.orange,
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
