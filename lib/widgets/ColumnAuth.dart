import 'package:ecomerce_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

import '../views/HomePage.dart';

class ColumnAuth extends StatelessWidget {
  const ColumnAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController firstnameController = TextEditingController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        TextField(
          controller: firstnameController,
          style: const TextStyle(fontSize: 18.0),
          decoration: InputDecoration(
            hintText: 'What is your firstname?',
            labelText: "Name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        CustomButton(
            buttonText: 'Start Ordering',
            onPressed: () {
              print("firstnameController: ${firstnameController.text}");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomePage(
                            name: firstnameController.text,
                          )));
            }),
        const SizedBox(height: 120),
      ],
    );
  }
}
