import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("lib/assets/bg.jpg"), fit: BoxFit.fill)),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enjoy",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "the World !",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 31,
                    fontWeight: FontWeight.w200),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w200)),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Ink(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Icon(Icons.arrow_forward_ios)))
            ],
          ),
        )),
      ),
    );
  }
}
