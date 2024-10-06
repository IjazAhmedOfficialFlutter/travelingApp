import 'package:flutter/material.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  const BoxShadow(color: Colors.white, blurRadius: 6)
                ]),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  const BoxShadow(color: Colors.white, blurRadius: 6)
                ]),
            child: const Icon(
              Icons.favorite,
              color: Colors.redAccent,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
