import 'package:assignment_10/utilities.dart';
import 'package:flutter/material.dart';

class PortraitModeScreen extends StatelessWidget {
  const PortraitModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: screenSize.width / 2,
            backgroundImage: const NetworkImage(profileImage),
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
          GridView.builder(
            shrinkWrap: true,
            itemCount: img.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Image.network(
                img[index],
                fit: BoxFit.fill,
              );
              // return Text("data");
            },
          ),
        ],
      ),
    );
  }
}
