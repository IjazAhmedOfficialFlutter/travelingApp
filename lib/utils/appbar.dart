import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      const BoxShadow(color: Colors.black26, blurRadius: 6)
                    ]),
                child: const Icon(Icons.sort_rounded)),
            const Row(
              children: [
                Icon(
                  Icons.place,
                  color: Colors.red,
                ),
                Text("New York, USA"),
              ],
            ),
            Ink(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(color: Colors.black26, blurRadius: 6)
                    ]),
                child: const Icon(Icons.search))
          ],
        ),
      ),
    );
  }
}
