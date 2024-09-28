import 'package:flutter/material.dart';
import 'package:onze_cafe/screens/Auth%20Screens/login_screen.dart';
import 'package:onze_cafe/screens/Home%20Screen/home_screen.dart';
import 'package:onze_cafe/data_layer/data_layer.dart';
import 'package:onze_cafe/services/setup.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (locator.get<DataLayer>().loggedIn()) {
      return const HomeScreen();
    } else {
      return const LoginScreen();
    }
  }
}
