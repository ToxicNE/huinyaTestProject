import 'package:flutter/material.dart';
import 'package:test_wirex/screens/authorization_screen.dart';
import 'package:test_wirex/screens/registration_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'WireX',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 70),
        ),
        backgroundColor: Colors.white,
      ),
      body: Stack(children: [
        Column(
          children: [
            const SizedBox(
              height: 400,
              width: double.infinity,
            ),
            Center(
                child: Column(children: [
              Container(
                alignment: Alignment.center,
                child: Column(children: [
                  SizedBox(
                    width: 173,
                    height: 39,
                    child: ElevatedButton(
                        onPressed: () => goToRegistrationScreen(context),
                        child: const Text('Создать')),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 173,
                    height: 39,
                    child: ElevatedButton(
                        onPressed: () => goToAuthorizationScreen(context),
                        child: const Text('Войти')),
                  ),
                ]),
              )
            ]))
          ],
        ),
      ]),
    );
  }

  void goToRegistrationScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => RegistrationScreen()),
    );
  }

  void goToAuthorizationScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const AuthorizationScreen()),
    );
  }
}
