import 'package:flutter/material.dart';

import '../utilities.dart';

class LandscapeModeScreen extends StatelessWidget {
  const LandscapeModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CircleAvatar(
            radius: screenSize.width / 6,
            backgroundColor: Colors.transparent,
            backgroundImage: const NetworkImage(profileImage),
          ),
          const SizedBox(width: height),

          Expanded(
            child: Column(
              children: [
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
                  itemCount: img.length,
                  shrinkWrap: true,
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
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
