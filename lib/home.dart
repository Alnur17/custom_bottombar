import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return Text(
                'dnsjfjjkdbfkdba  fj djbdbfkjbdjkbfkjbdjfsbjdbfjbsm vjk vkjdssss');
          },
        ),
      ),
    );
  }
}
