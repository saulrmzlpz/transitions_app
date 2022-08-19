import 'package:flutter/material.dart';
import 'package:transitions_app/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: const Center(
        child: Text('FirstScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
        child: const Icon(Icons.animation),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SecondScreen();
      },
      transitionDuration: const Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curveAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        // return SlideTransition(
        //   position: Tween<Offset>(begin: Offset(0.0, -1.0), end: Offset.zero).animate(curveAnimation),
        //   child: child,
        // );

        // return ScaleTransition(
        //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        // return RotationTransition(
        //   turns: Tween<double>(begin: 0.0, end: 2).animate(curveAnimation),
        //   child: child,
        // );

        // return FadeTransition(
        //   opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
        //   child: child,
        // );

        return RotationTransition(
          turns: Tween<double>(begin: 0.0, end: 1).animate(curveAnimation),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curveAnimation),
            child: child,
          ),
        );
      },
    );
  }
}
