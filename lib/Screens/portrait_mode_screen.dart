import 'package:assignment_10/utilities.dart';
import 'package:flutter/material.dart';

class PortraitModeScreen extends StatelessWidget {
  const PortraitModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 200,
            backgroundImage: NetworkImage(profileImage),
          ),
          const SizedBox(height: height),
          const Text(
            "John Doe",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: height),
          const Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.",
          ),
          const SizedBox(height: height),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  galleryImage,
                  width: 50,
                );
                // return Text("data");
              },
            ),
          )
        ],
      ),
    );
  }
}
