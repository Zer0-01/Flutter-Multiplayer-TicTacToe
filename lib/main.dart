import 'package:flutter/material.dart';
import 'package:flutter_multiplayer_tictactoe/screens/createRoomScreen.dart';
import 'package:flutter_multiplayer_tictactoe/screens/joinRoomScreen.dart';
import 'package:flutter_multiplayer_tictactoe/screens/mainMenuScreen.dart';
import 'package:flutter_multiplayer_tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
